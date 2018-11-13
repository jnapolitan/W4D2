# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all 

c1 = Cat.create(name: 'McGonanagal', birth_date: '1/1/1950', color: 'tabby', sex: 'F', description: 'smart and stern')
c2 = Cat.create(name: 'Crookshanks', birth_date: '5/1/1990', color: 'ginger', sex: 'M', description: 'smart and grumpy')
c3 = Cat.create(name: 'Lil Miss', birth_date: '31/10/2005', color: 'black', sex: 'F', description: 'sassy and feral')
c4 = Cat.create(name: 'Kai', birth_date: '6/2/2009', color: 'blue', sex: 'M', description: 'chill and cool')
c5 = Cat.create(name: 'Gryffindor', birth_date: '30/10/2000', color: 'brown', sex: 'M', description: 'loyal and loving')

r1 = CatRentalRequest.create(cat_id: c1.id, start_date: '24/12/2018', end_date: '30/12/2018', status: 'APPROVED')
r1 = CatRentalRequest.create(cat_id: c1.id, start_date: '21/12/2018', end_date: '26/12/2018')
r1 = CatRentalRequest.create(cat_id: c5.id, start_date: '24/11/2018', end_date: '30/12/2018')
r1 = CatRentalRequest.create(cat_id: c3.id, start_date: '24/12/2018', end_date: '30/12/2018')
r1 = CatRentalRequest.create(cat_id: c4.id, start_date: '24/12/2019', end_date: '30/12/2019', status: 'APPROVED')
