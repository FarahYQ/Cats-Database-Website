# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
cat1 = Cat.create!(birth_date: '2008/03/24', color: 'black', name: 'Whiskers', sex: 'M', description: 'Oldest cat on the block, will protect all others!')
cat2 = Cat.create!(birth_date: '2017/03/21', color: 'grey', name: 'Theodore', sex: 'M', description: 'Younger')
cat3 = Cat.create!(birth_date: '2017/02/21', color: 'red', name: 'Jack', sex: 'M', description: 'hello')
cat4 = Cat.create!(birth_date: '2016/05/21', color: 'spotted', name: 'Jill', sex: 'F', description: 'fluffy')



cr1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2018/05/02', end_date: '2018/05/21')
cr2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2018/05/05', end_date: '2018/05/20')
cr3 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '2018/06/02', end_date: '2018/06/21')

