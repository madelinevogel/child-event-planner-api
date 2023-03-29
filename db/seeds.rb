# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Madeline", email: "mvogel@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Katherine", email: "kvogel@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Lauren", email: "lbriese@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Angie", email: "aripa@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Ann", email: "acockerill@test.com", password: "password", password_confirmation: "password")

User.create!(name: "Dale", email: "dripa@test.com", password: "password", password_confirmation: "password")

Child.create!(name: "Finn", image: "https://cff2.earth.com/uploads/2022/07/22091603/Fin-trade-scaled.jpg", user_id: 1)

Child.create!(name: "Dash", image: "https://www.pngfind.com/pngs/m/139-1392514_incredibles-2-disney-pixar-dash-parr-png.png", user_id: 1)

Child.create!(name: "Henry", image: "https://illustoon.com/photo/10688.png", user_id: 3)

Child.create!(name: "Violet", image: "https://i.pinimg.com/736x/2c/e1/aa/2ce1aacae64e03352af542304f008aa4.jpg", user_id: 2)

Event.create!(name: "Team 2 vs. Team 5", location: "Gretna Ballfields", start_time: "2023-03-23 10:00:00", event_type: "Softball", child_id: 4)

Event.create!(name: "Team Red vs. Team Blue", location: "Lincoln Prairie Park", start_time: "2023-04-13 02:30:00", event_type: "Soccer", child_id: 1)

Event.create!(name: "Swim Meet", location: "Lincoln East High School", start_time: "2023-05-02 08:00:00", event_type: "Swim", child_id: 3)
