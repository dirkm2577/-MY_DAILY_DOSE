# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Supplement.destroy_all
User.destroy_all

puts "Creating User1"
user1 = User.new(email: "alex@quest.com", password: "123456")

puts "Creating User2"
user2 = User.new(email: "david@quest.com", password: "123456")

puts "Creating Supplement 1"

supplement1 = Supplement.new(name: "Vitamin D3", price: 12, description: "Vitamin D3 is the body's preferred form of vitamin D and can help support many aspects of health.Vitamin D3 (5,000 IU) is a high-potency vitamin D supplement and contains lanolin-derived cholecalciferol in soft fish gelatin capsules", user: user1, quantity: 60, frequency: 1, unit_measure: "125 mcg (5000 IU)", category: "vitamins")

# puts "Adding image 1"
# file1 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217280/Vitamin_D_image_3_q22peu.png')
# supplement1.images.attach(io: file1, filename: 'vitamin_d_image_1.png', content_type: 'image/png')
# supplement1.save!

puts "Adding image 2"
file2 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_2_lt9txk.png')
supplement1.images.attach(io: file2, filename: 'vitamin_d_image_2.png', content_type: 'image/png')
supplement1.save!

puts "Adding image 3"
file3 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669217281/Vitamin_D_image_1_yaiuwr.png')
supplement1.images.attach(io: file3, filename: 'vitamin_d_image_3.png', content_type: 'image/png')
supplement1.save!

puts "Creating Supplement 2"

supplement2 = Supplement.new(name: "Omega-3 Fish Oil", price: 16, description: "Featuring Globally-Sourced, Highly-Refined Fish Oil. Concentrated and Molecularly Distilled. Helps to Maintain Optimal Lipid Profile.", user: user2, quantity: 240, frequency: 2, unit_measure: "640 mg", category: "dietary supplements")

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

supplement3 = Supplement.new(name: "Trans-Resveratrol 600", price: 38, description: "Trans-Resveratrol is a unique antioxidant with the ability to cross the blood-brain barrier. 98% pure Trans-Resveratrol.", user: user2, quantity: 60, frequency: 1, unit_measure: "600 mg", category: "dietary supplements")

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

puts "Creating Supplement 4"

supplement4 = Supplement.new(name: "Vitamin C", price: 9, description: "Dietary supplements in gummies form can be a great and tasty way to add essential nutrients to your daily routine, especially if you don't like taking capsules or tablets.", user: user1, quantity: 90, frequency: 3, unit_measure: "250 mg", category: "vitamins")

puts "Adding image 10"
file10 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669711075/Vitamin_C_image_1_vjlipy.png')
supplement4.images.attach(io: file10, filename: 'vitamin_c_image_1.png', content_type: 'image/png')
supplement4.save!

puts "Adding image 11"
file11 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669711077/Vitamin_C_image_2_eip0r0.png')
supplement4.images.attach(io: file11, filename: 'vitamin_c_image_2.png', content_type: 'image/png')
supplement4.save!

puts "Adding image 12"
file12 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669711077/Vitamin_C_image_3_eoobbm.png')
supplement4.images.attach(io: file12, filename: 'vitamin_c_image_3.png', content_type: 'image/png')
supplement4.save!

puts "Creating Supplement 5"

supplement5 = Supplement.new(name: "5-HTP", price: 10, description: "5-HTP is extracted from the seeds of the African black bean. In the brain, 5-HTP is converted into serotonin, a neurotransmitter found at the junctions (synapses) between neurons. It has a calming and relaxing effect and supports mental and emotional well-being as well as healthy sleep.", user: user2, quantity: 60, frequency: 1, unit_measure: "100 mg", category: "weight-loss")

puts "Adding image 13"
file13 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669712493/5-HTP_image_1_mwibwn.png')
supplement5.images.attach(io: file13, filename: '5-HTP_image_1.png', content_type: 'image/png')
supplement5.save!

puts "Adding image 14"
file14 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669712493/5-HTP_image_2_pmizgm.png')
supplement5.images.attach(io: file14, filename: '5-HTP_image_2.png', content_type: 'image/png')
supplement5.save!

puts "Adding image 15"
file15 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669712507/5-HTP_image_3_cpogwe.png')
supplement5.images.attach(io: file15, filename: '5-HTP_image_3.png', content_type: 'image/png')
supplement5.save!

puts "Creating Supplement 6"

supplement6 = Supplement.new(name: "High Absorption Magnesium", price: 12, description: "Doctor's Best Magnesium contains a daily dose of magnesium with high absorption capacity without burdening the gastrointestinal tract. This superior formula with 100% chelated lysinate glycinate magnesium absorbs effectively to support muscle relaxation and optimal nerve function.", user: user2, quantity: 60, frequency: 2, unit_measure: "200 mg", category: "minerals")

puts "Adding image 16"
file16 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669713211/Magnesium_image_1_htsnig.png')
supplement6.images.attach(io: file16, filename: 'Magnesium_image_1.png', content_type: 'image/png')
supplement6.save!

puts "Adding image 17"
file17 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669713211/Magnesium_image_2_jupgod.png')
supplement6.images.attach(io: file17, filename: 'Magnesium_image_2.png', content_type: 'image/png')
supplement6.save!

puts "Creating Supplement 7"

supplement7 = Supplement.new(name: "Quercetin", price: 12, description: "Quercetin is one of the best-known antioxidant bioflavonoids. As a free radical scavenger, quercetin supports healthy sinus, respiratory, and immune system function.", user: user2, quantity: 60, frequency: 1, unit_measure: "500 mg", category: "antioxidants")

puts "Adding image 18"
file18 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669714276/Quercetin_image_1_kver83.png')
supplement7.images.attach(io: file18, filename: 'Quercetin_image_1.png', content_type: 'image/png')
supplement7.save!

puts "Adding image 19"
file19 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669714276/Quercetin_image_2_wpqww6.png')
supplement7.images.attach(io: file19, filename: 'Quercetin_image_2.png', content_type: 'image/png')
supplement7.save!

puts "Creating Supplement 8"

supplement8 = Supplement.new(name: "Complete B-Complex", price: 12, description: "It is important to consume a broad spectrum of the vitamin B family every day. BioActive Complete B-Complex is made up of the biologically active forms of each nutrient, optimizing absorption and giving your body what it needs to thrive.", user: user2, quantity: 60, frequency: 2, unit_measure: "100 %", category: "vitamins")

puts "Adding image 20"
file20 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669714771/Vitamin_B_image_1_cvy0ty.png')
supplement8.images.attach(io: file20, filename: 'Vitamin_B_image_1.png', content_type: 'image/png')
supplement8.save!

puts "Adding image 21"
file21 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669714771/Vitamin_B_image_2_qgcow8.png')
supplement8.images.attach(io: file21, filename: 'Vitamin_B_image_2.png', content_type: 'image/png')
supplement8.save!

puts "Creating Supplement 9"

supplement9 = Supplement.new(name: "Theracurmin", price: 17, description: "Curcumin is the yellow pigment in turmeric that has numerous health benefits but is not easily absorbed by the body. Theracurmin is a natural curcumin supplement that uses advanced techniques to reduce the particle size of curcumin, dramatically increasing its solubility and bioavailability.", user: user2, quantity: 60, frequency: 2, unit_measure: "30 mg", category: "antioxidants")

puts "Adding image 22"
file22 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669715338/Curcumin_image_1_ubg6bn.png')
supplement9.images.attach(io: file22, filename: 'Curcumin_image_1.png', content_type: 'image/png')
supplement9.save!

puts "Adding image 23"
file23 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669714771/Vitamin_B_image_2_qgcow8.png')
supplement9.images.attach(io: file23, filename: 'Curcumin_image_2.png', content_type: 'image/png')
supplement9.save!

puts "Creating Supplement 10"

supplement10 = Supplement.new(name: "Glucosamine", price: 18, description: "Doctor's Best Glucosamine Chondroitin MSM contains three key nutrients that support healthy joints and connective tissue: glucosamine, chondroitin, and methylsulfonylmethane (MSM, from OptiMSM). ", user: user2, quantity: 30, frequency: 4, unit_measure: "1500 mg", category: "dietary supplements")

puts "Adding image 24"
file24 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669715844/Glucosamine_image_1_vahmr9.png')
supplement10.images.attach(io: file24, filename: 'Glucosamine_image_1.png', content_type: 'image/png')
supplement10.save!

puts "Adding image 25"
file25 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669715844/Glucosamine_image_2_thdbqy.png')
supplement10.images.attach(io: file25, filename: 'Glucosamine_image_2.png', content_type: 'image/png')
supplement10.save!

puts "Creating Supplement 11"

supplement11 = Supplement.new(name: "Probiotics", price: 44, description: "Our bodies are home to a microbiome of good bacteria that can support day-to-day bodily functions. Lake Avenue Nutrition Probiotics contains 10 different strains of these good bacteria that may support digestive and immune health.", user: user2, quantity: 180, frequency: 1, unit_measure: "160 mg", category: "dietary supplements")

puts "Adding image 26"
file26 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669716350/Probiotics_image_1_at6oub.png')
supplement11.images.attach(io: file26, filename: 'Probiotics_image_1.png', content_type: 'image/png')
supplement11.save!

puts "Adding image 27"
file27 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669716349/Probiotics_image_2_kwjpbj.png')
supplement11.images.attach(io: file27, filename: 'Probiotics_image_2.png', content_type: 'image/png')
supplement11.save!

puts "Adding image 28"
file28 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669716349/Probiotics_image_3_lafrdi.png')
supplement10.images.attach(io: file28, filename: 'Probiotics_image_2.png', content_type: 'image/png')
supplement10.save!

puts "Creating Supplement 12"

supplement12 = Supplement.new(name: "Vitamin E", price: 8, description: "Vitamin E is an antioxidant nutrient and supports the immune system.", user: user2, quantity: 110, frequency: 2, unit_measure: "180 mg (400 IU)", category: "vitamins")

puts "Adding image 29"
file29 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669716767/Vitamin_E_image_1_hapoid.png')
supplement12.images.attach(io: file29, filename: 'Vitamin_E_image_1.png', content_type: 'image/png')
supplement12.save!

puts "Adding image 30"
file30 = URI.open('https://res.cloudinary.com/dach7c7ct/image/upload/v1669716767/Vitamin_E_image_2_p9wwig.png')
supplement12.images.attach(io: file30, filename: 'Vitamin_E_image_2.png', content_type: 'image/png')
supplement12.save!
