# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


properties = Property.create(
  description: "A really nice house!",
  year_built: 2000,
  square_feet: 2100,
  bedrooms: 3,
  bathrooms: 2,
  availability: true,
  address: "123 Real Street",
  price: 300000
)