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
require "faker"

Booking.destroy_all
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
puts "Created painting"

file_electricity = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320439/multimeter_mjdpyk.jpg")
electricity = Category.new(name: "Electricity")
electricity.photo.attach(io: file_electricity, filename: "multimeter_mjdpyk.jpg", content_type: "image/jpg")
electricity.save
puts "Created electricity"

file_plumbing = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724407162/plumbing-c_ofebbz.jpg")
plumbing = Category.new(name: "Plumbing")
plumbing.photo.attach(io: file_plumbing, filename: "p-tools.jpg", content_type: "image/jpg")
plumbing.save
puts "Created plumbing"

file_cleaning = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724407119/cleaning-c_owkokf.jpg")
cleaning = Category.new(name: "cleaning")
cleaning.photo.attach(io: file_cleaning, filename: "p-tools.jpg", content_type: "image/jpg")
cleaning.save
puts "Created cleaning"

file_construction = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320208/saw_gzzlh4.jpg")
construction = Category.new(name: "Construction")
construction.photo.attach(io: file_construction, filename: "saw.jpg", content_type: "image/jpg")
construction.save
puts "Created construction"

file_scaffold = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320162/fork-lift_sgsu5u.jpg")
scaffold = Category.new(name: "High-Works")
scaffold.photo.attach(io: file_scaffold, filename: "fork-lift.jpg", content_type: "image/jpg")
scaffold.save
puts "Created scaffold"

#users seeds

file_marco = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724320916/marcoG_fwtewz.jpg")
marco = User.new(email: "marco@ttr.com", first_name: "Marco", last_name: "Garbini", password: "1234567", password_confirmation: "1234567", phone_number: "+34 681 888 027")
marco.photo.attach(io: file_marco, filename: "marco.jpg", content_type: "image/jpg")
marco.save

file_moises = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724321065/Moises_VG_ukbxvm.jpg")
moises = User.new(email: "moises@ttr.com", first_name: "Moises", last_name: "Velasquez", password: "1234567", password_confirmation: "1234567", phone_number: "+34 651 073 328")
moises.photo.attach(io: file_moises, filename: "moises.jpg", content_type: "image/jpg")
moises.save

# tools seeds

#construction

file_hammer = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724402827/yob8o1svr1u6kwommsw4.jpg")
hammer = Tool.new(name: "hammer", user: marco, category: construction, description: "A tool that helps things get hammered.", address: Faker::Address.full_address)
hammer.photos.attach(io: file_hammer, filename: "hammer.jpg", content_type: "image/jpg")
hammer.save
puts "Created hammer"

file_mixer = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403171/c-mixer_uwjsug.jpg")
mixer = Tool.new(name: "mixer", user: moises, category: construction, description: "That giant rotating drum is just a concrete blender on steroids, ready to whip up a tasty batch of building material!", address: Faker::Address.full_address)
mixer.photos.attach(io: file_mixer, filename: "mixer.jpg", content_type: "image/jpg")
mixer.save
puts "Created mixer"

file_nail = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403169/t-nails_leedoj.jpg")
nail = Tool.new(name: "nail", user: marco, category: construction, description: "A nail is a tiny metal spike that loves to pretend it's a superhero, saving wood from splintering one hammer swing at a time.", address: Faker::Address.full_address)
nail.photos.attach(io: file_nail, filename: "nail.jpg", content_type: "image/jpg")
nail.save
puts "Created nail"

#cleaning

file_broom = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403514/brooms_opxzmk.jpg")
broom = Tool.new(name: "broom", user: marco, category: cleaning, description: "Cleans really good!", address: Faker::Address.full_address)
broom.photos.attach(io: file_broom, filename: "broom.jpg", content_type: "image/jpg")
broom.save
puts "Created broom"

file_spray = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403634/spray_vn5zj8.jpg")
spray = Tool.new(name: "spray", user: moises, category: cleaning, description: "This cleaning spray is so powerful, it could clean a pig in a poke!", address: Faker::Address.full_address)
spray.photos.attach(io: file_spray, filename: "spray.jpg", content_type: "image/jpg")
spray.save
puts "Created mixer"

file_sponges = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403636/sponge_gnwtn9.jpg")
sponges = Tool.new(name: "sponges", user: marco, category: cleaning, description: "A squishy, absorbent friend who loves to soak up messes and make bath time fun.", address: Faker::Address.full_address)
sponges.photos.attach(io: file_sponges, filename: "sponges.jpg", content_type: "image/jpg")
sponges.save
puts "Created sponges"

file_mop = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724404764/mops_ikptk5.jpg")
mop = Tool.new(name: "mop", user: marco, category: cleaning, description: "A floor's best friend, always there to soak up the mess and save the day.", address: Faker::Address.full_address)
mop.photos.attach(io: file_mop, filename: "mop.jpg", content_type: "image/jpg")
mop.save
puts "Created mop"

file_bags = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724404681/g-bags_vgne3q.jpg")
bags = Tool.new(name: "bags", user: marco, category: cleaning, description: "They're like the unsung heroes of our homes, silently containing our trash and keeping our lives from becoming one giant dumpster fire.", address: Faker::Address.full_address)
bags.photos.attach(io: file_bags, filename: "bags.jpg", content_type: "image/jpg")
bags.save
puts "Created bags"

#painting

file_brushes = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724403319/bushes_xrpxc4.jpg")
brushes = Tool.new(name: "brushes", user: moises, category: painting, description: "A collection of colorful, bristly friends, ready to unleash your inner artist—or make a mess of your kitchen floor.", address: Faker::Address.full_address)
brushes.photos.attach(io: file_brushes, filename: "brushes.jpg", content_type: "image/jpg")
brushes.save
puts "Created brushes"



#plumbing

file_gloves = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724404949/c-gloves_l1r3sn.jpg")
gloves = Tool.new(name: "gloves", user: marco, category: plumbing, description: "These gloves aren't just for keeping your hands clean; they're also a fashion statement. Who knew plumbing could be so glamorous?", address: Faker::Address.full_address)
gloves.photos.attach(io: file_gloves, filename: "gloves.jpg", content_type: "image/jpg")
gloves.save
puts "Created gloves"

file_plunger = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405000/daniel-dan-DqC8-L5oNlo-unsplash_gikjin.jpg")
plunger = Tool.new(name: "plunger", user: moises, category: plumbing, description: "The superhero of clogged drains, ready to plunge into action and save the day from a watery mess.", address: Faker::Address.full_address)
plunger.photos.attach(io: file_plunger, filename: "plunger.jpg", content_type: "image/jpg")
plunger.save
puts "Created plunger"

file_pliers = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405121/pliers_qb9qcd.jpg")
pliers = Tool.new(name: "pliers", user: marco, category: plumbing, description: "A pliers that's seen more pipes than a plumber's apprentice. It's the grippiest tool in town, and it's not afraid to get its hands dirty.", address: Faker::Address.full_address)
pliers.photos.attach(io: file_pliers, filename: "pliers.jpg", content_type: "image/jpg")
pliers.save
puts "Created pliers"

file_codo = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405028/bjorn-hansen-Qhy7Jdd20ns-unsplash_kgzj3o.jpg")
codo = Tool.new(name: "codo", user: marco, category: plumbing, description: "El mejor codito para toas las casas", address: Faker::Address.full_address)
codo.photos.attach(io: file_codo, filename: "codo.jpg", content_type: "image/jpg")
codo.save
puts "Created codo"

#electricity


file_smoke = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405277/smoke-carbon-monoxide-alarm-isolated-white-background_o5la1l.jpg")
smoke = Tool.new(name: "smoke", user: moises, category: electricity, description: "That little white ceiling fixture that always seems to go off when you're burning toast, but is mysteriously silent during actual house fires.", address: Faker::Address.full_address)
smoke.photos.attach(io: file_smoke, filename: "smoke.jpg", content_type: "image/jpg")
smoke.save
puts "Created smoke detector"

file_cables = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405548/more-cables_taopft.jpg")
cables = Tool.new(name: "cables", user: marco, category: electricity, description: "The tangled, serpentine creatures that connect our devices, but somehow always seem to be one foot too short.", address: Faker::Address.full_address)
cables.photos.attach(io: file_cables, filename: "cables.jpg", content_type: "image/jpg")
cables.save
puts "Created cables"


file_lighting = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405470/outdoor-l_rivhml.jpg")
lighting = Tool.new(name: "lighting", user: marco, category: electricity, description: "These lights aren't just bright; they're downright illuminating! They'll make your backyard feel like a scene straight out of a summer blockbuster.", address: Faker::Address.full_address)
lighting.photos.attach(io: file_lighting, filename: "lighting.jpg", content_type: "image/jpg")
lighting.save
puts "Created lighting "

#gardening


file_mower = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405676/jeremy-boley-zRCNMoW-goc-unsplash_yffckk.jpg")
mower = Tool.new(name: "mower", user: marco, category: gardening, description: "The gardener's best friend, and a neighbor's worst nightmare", address: Faker::Address.full_address)
mower.photos.attach(io: file_mower, filename: "mower.jpg", content_type: "image/jpg")
mower.save
puts "Created mower detector"

file_can = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405796/laura-roberts-soh2mw-c0F8-unsplash_tow5wf.jpg")
can = Tool.new(name: "can", user: marco, category: gardening, description: "A watercan is a vessel that's always thirsty, even though it's full of water. It's the only object that can quench your thirst while being constantly parched.", address: Faker::Address.full_address)
can.photos.attach(io: file_can, filename: "can.jpg", content_type: "image/jpg")
can.save
puts "Created can"


file_rake = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724405897/rake_vz3nq6.jpg")
rake = Tool.new(name: "rake", user: moises, category: gardening, description: "The ultimate tool for turning your yard into a leaf-free zone, one satisfying scratch at a time.", address: Faker::Address.full_address)
rake.photos.attach(io: file_rake, filename: "rake.jpg", content_type: "image/jpg")
rake.save
puts "Created rake "

file_shovel = URI.open("https://res.cloudinary.com/dsxjo0uz0/image/upload/v1724406011/shovel_iu4qwr.jpg")
shovel = Tool.new(name: "shovel", user: moises, category: gardening, description: "It's like a spoon for the dirt, but without the fancy handle or the ability to taste good.", address: Faker::Address.full_address)
shovel.photos.attach(io: file_shovel, filename: "shovel.jpg", content_type: "image/jpg")
shovel.save
puts "Created shovel "