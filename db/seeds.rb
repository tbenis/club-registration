# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = User.create(name: "manual test", email: "manualtest@email.com", password: "manualtest")
u1 = User.create(name: "manual test1", email: "manualtest1@email.com", password: "manualtest1")

u2 = User.create(name: "manual test2", email: "manualtest2@email.com", password: "manualtest2")

c = Club.create(name: "bowling1", description: "A club that helps students bond through bowling")
c1 = Club.create(name: "Roller skaters unite1", description: "A club that helps students bond through roller skating")