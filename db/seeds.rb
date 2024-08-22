# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

require "open-uri"

Tool.destroy_all
Category.destroy_all
User.destroy_all

#categories seeds

file_gardening = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724319969/g-tools_lbb7la.jpg")
gardening = Category.new(name: "Gardening")
gardening.photo.attach(io: file_gardening, filename: "g-tools_lbb7.jpg", content_type: "image/jpg")
gardening.save
puts "Created Gardening"

file_painting = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320397/brush_wcsq9p.jpg")
painting = Category.new(name: "Painting")
painting.photo.attach(io: file_painting, filename: "brush_wcsq9p.jpg", content_type: "image/jpg")
painting.save

file_electricity = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320439/multimeter_mjdpyk.jpg")
electricity = Category.new(name: "Electricity")
electricity.photo.attach(io: file_electricity, filename: "multimeter_mjdpyk.jpg", content_type: "image/jpg")
electricity.save

file_plumbing = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320487/p-tools_iur5jd.jpg")
plumbing = Category.new(name: "Plumbing")
plumbing.photo.attach(io: file_plumbing, filename: "p-tools.jpg", content_type: "image/jpg")
plumbing.save

file_construction = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320208/saw_gzzlh4.jpg")
construction = Category.new(name: "Construction")
construction.photo.attach(io: file_construction, filename: "saw.jpg", content_type: "image/jpg")
construction.save

file_scaffold = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320162/fork-lift_sgsu5u.jpg")
scaffold = Category.new(name: "High-Works")
scaffold.photo.attach(io: file_scaffold, filename: "fork-lift.jpg", content_type: "image/jpg")
scaffold.save

#users seeds

file_marco = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320916/marcoG_fwtewz.jpg")
marco = User.new(email: "marcoogarbini@gmail.com", first_name: "Marco", last_name: "Garbini", password: "1234567", password_confirmation: "1234567")
marco.photo.attach(io: file_marco, filename: "marco.jpg", content_type: "image/jpg")
marco.save

file_moises = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724321065/Moises_VG_ukbxvm.jpg")
moises = User.new(email: "moises.leonardo.velasquez.g@gmail.com", first_name: "Moises", last_name: "Velasquez", password: "1234567", password_confirmation: "1234567")
moises.photo.attach(io: file_moises, filename: "moises.jpg", content_type: "image/jpg")
moises.save
