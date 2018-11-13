class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  
  COLORS = %w(tabby calico blue tuxedo black white ginger brown)
  
  validates :sex, inclusion: { in: %w(M F),
    message: "Sex must be 'M' or 'F'"}
  validates :color, inclusion: { in: COLORS,
    message: "Invalid color"}
  validates :birth_date, :color, :name, :sex, presence: true
  
  has_many :requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy
  
  def age
    distance_of_time_in_words(birth_date, Time.now)
  end
end
