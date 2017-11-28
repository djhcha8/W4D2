# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



sushi_bd = Date.parse('11-11-2011')
n_sushi_bd = Date.parse('11-11-2016')


Cat.destroy_all
cat_1 = Cat.create(birth_date: sushi_bd, color: 'gray', name: 'sushi', sex: 'F', description: 'The worst cat ever!')
cat_2 = Cat.create(birth_date: n_sushi_bd, color: 'white', name: 'not_sushi', sex: 'M', description: 'Sushi\'s nemesis')


CatRentalRequest.destroy_all
CatRentalRequest.create(cat_id: 1, start_date: Date.parse('01-01-2012'), end_date: Date.parse('01-01-2013'))
