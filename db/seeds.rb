# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
50.times do |iter|
  User.create(email: Faker::Internet.safe_email, :password => "password", password_confirmation: "password", name: Faker::Name.name)
end
User.create(email: "superadmin@test.com", :password => "password", password_confirmation: "password", name: "Super Admin", is_admin: true)
10.times do |iter|
  Category.create(name: "category #{iter}")
end
