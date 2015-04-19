100.times do
 Employee.create(:prefix => Faker::Name.prefix,
  :first_name => Faker::Name.first_name,
  :last_name => Faker::Name.last_name,
  :title => Faker::Name.title,
  :company_name => Faker::Company.name,
  :email => Faker::Internet.email,
  :phone_number => Faker::PhoneNumber.phone_number)
end 


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
