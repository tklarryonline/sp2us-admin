# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8
# AdminUser
AdminUser.delete_all

AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password")
AdminUser.create(email: "luan@tklarryonline.me", password: "password", password_confirmation: "password")
AdminUser.create(email: "vux@sp2us.com", password: "password", password_confirmation: "password")

# Rooms
Room.delete_all

Room.create(name: "Brainstorming Room", price_per_hour: 4.0, capacity: 10)
Room.create(name: "Creative Room", price_per_hour: 3.0, capacity: 7)
Room.create(name: "Workshop Room", price_per_hour: 6.0, capacity: 15)

# User
User.delete_all

User.create(name: "TK Larry", email: "tklarryonline@gmail.com", password: "password", password_confirmation: "password")
User.create(name: "Luan Nguyen Thanh", email: "luan.nguyenthanh@rmitc.org", password: "password", password_confirmation: "password")
User.create(name: "Vux Nguyen", email: "vuxnguyenonline@gmail.com", password: "password", password_confirmation: "password")
