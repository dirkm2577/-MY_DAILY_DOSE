# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all
Supplement.destroy_all

puts "Creating User1"
user1 = User.new(email: "alex@quest.com", password: "123456")

puts "Creating Supplement 1"

supplement1 = Supplement.new(name: "Vitamin D3", price: 12, description: "Das vegane Vitamin D3 von MRM ist eine einzigartige mikroverkapselte Cholecalciferol-Form von Vitamin D3, die ausschließlich aus Flechten extrahiert wird, um den Calciumbedarf und die Gesundheitsbedürfnisse der Knochen von Veganern und Vegetariern zu erfüllen.", user: user1, quantity: 60, frequency: 1, unit_measure: "125 mcg (5000 IU)", category: "vitamins")

puts "Adding image 1"

file1 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_1_yaiuwr.png')
supplement1.images.attach(io: file1, filename: 'vitamin_d_image_1.png', content_type: 'image/png')
supplement1.save!

puts "Adding image 2"
file2 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_2_lt9txk.png')
supplement1.images.attach(io: file2, filename: 'vitamin_d_image_2.png', content_type: 'image/png')
supplement1.save!

puts "Adding image 3"
file3 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217280/Vitamin_D_image_3_q22peu.png')
supplement1.images.attach(io: file3, filename: 'vitamin_d_image_3.png', content_type: 'image/png')
supplement1.save!

puts "Creating Supplement 2"

supplement2 = Supplement.new(name: "Omega-3 Fish Oil", price: 16, description: "Featuring Globally-Sourced, Highly-Refined Fish Oil. Concentrated and Molecularly Distilled. Helps to Maintain Optimal Lipid Profile.", user: user1, quantity: 240, frequency: 2, unit_measure: "640 mg", category: "dietary supplements")

puts "Adding image 4"
file4 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217402/Omega_3_image_1_csatoq.png')
supplement2.images.attach(io: file4, filename: 'omega_3_image_1.png', content_type: 'image/png')
supplement2.save!

puts "Adding image 5"
file5 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217402/Omega_3_image_2_qkkmwn.png')
supplement2.images.attach(io: file5, filename: 'omega_3_image_2.png', content_type: 'image/png')
supplement2.save!

puts "Adding image 6"
file6 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217402/Omega_3_image_3_m8xmpn.png')
supplement2.images.attach(io: file6, filename: 'omega_3_image_3.png', content_type: 'image/png')
supplement2.save!

puts "Creating Supplement 3"

supplement3 = Supplement.new(name: "Trans-Resveratrol 600", price: 38, description: "Trans-Resveratrol is a unique antioxidant with the ability to cross the blood-brain barrier. 98% pure Trans-Resveratrol.", user: user1, quantity: 60, frequency: 1, unit_measure: "600 mg", category: "dietary supplements")

puts "Adding image 7"
file7 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217650/resveratrol_image_1_s1zatp.png')
supplement3.images.attach(io: file7, filename: 'resveratrol_image_1.png', content_type: 'image/png')
supplement3.save!

puts "Adding image 8"
file8 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217648/resveratrol_image_2_ven3ar.png')
supplement3.images.attach(io: file8, filename: 'resveratrol_image_2.png', content_type: 'image/png')
supplement3.save!

puts "Adding image 9"
file9 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217655/resveratrol_image_3_kuknfy.png')
supplement3.images.attach(io: file9, filename: 'resveratrol_image_3.png', content_type: 'image/png')
supplement3.save!
