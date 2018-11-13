class CatRentalRequest < ApplicationRecord
  
  STATUS_STRINGS = %w(PENDING APPROVED DENIED)
  
  validate :does_not_overlap_approved_request
  
  validates :status, inclusion: { in: STATUS_STRINGS,
    message: "Invalid status"}
    
  validates :cat_id, :start_date, :end_date, :status, presence: true
  
  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat
    
  def overlapping_requests
    self.cat.requests.where('? < end_date OR ? > start_date', self.start_date, self.end_date)
  end
  
  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
  end 
  
  def does_not_overlap_approved_request
     if overlapping_approved_requests.exists?
       errors.add(:start_date, :end_date, "Date range overlaps approved request")
     end
  end 
  
end
