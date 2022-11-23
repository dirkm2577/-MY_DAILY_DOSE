# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Supplement.destroy_all

User.create!(email: "alex@quest.com", password: "123456") if User.count.zero?

@supplement1 = Supplement.create!(name: "Vitamin D3", price: 12, description: "Das vegane Vitamin D3 von MRM ist eine einzigartige mikroverkapselte Cholecalciferol-Form von Vitamin D3, die ausschließlich aus Flechten extrahiert wird, um den Calciumbedarf und die Gesundheitsbedürfnisse der Knochen von Veganern und Vegetariern zu erfüllen.", user_id: current_user.id, quantity: 60, frequency: "1 capsule daily", unit_measure: "125 mcg (5000 IU)", category: "vitamins")
# Adding images to each supplement
@supplement1.image.attach(io: File.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_1_yaiuwr.png'), filename: 'vitamin_d_image_1.png')
@supplement1.image.attach(io: File.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_2_lt9txk.png'), filename: 'vitamin_d_image_2.png')
@supplement1.image.attach(io: File.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217280/Vitamin_D_image_3_q22peu.png'), filename: 'vitamin_d_image_3.png')
