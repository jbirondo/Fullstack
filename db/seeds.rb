# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'

User.delete_all
Restaurant.delete_all

User.create!(email: "demo", password: "hunter2")

file01 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30 = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30b = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30c = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30d = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30e = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30f = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30g = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30h = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30a = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30aa = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ab = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ac = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ad = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ae = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30af = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')


file01ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ag = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file01ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-afternoon-architecture-1581554.jpg')
file02ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-alcoholic-beverages-bar-1267696.jpg')
file03ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-asian-food-celebration-1310777.jpg')
file04ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-beautiful-1537635.jpg')
file05ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-bar-blur-696218.jpg')
file06ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-beautiful-beauty-826349.jpg')
file07ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-blur-blurred-background-687824.jpg')
file08ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adult-buffet-employee-1121482.jpg')
file09ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-alcoholic-beverages-bar-1267697.jpg')
file10ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/adults-apron-counter-580613.jpg')
file11ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-architecture-bar-260922.jpg')
file12ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcohol-celebration-chairs-1679825.jpg')
file13ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverage-anniversary-bar-1246956.jpg')
file14ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/alcoholic-beverages-close-up-cuisine-541216.jpg')
file15ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/apartment-architecture-cafeteria-827528.jpg')
file16ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizer-close-up-cuisine-2122294.jpg')
file17ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/appetizers-chef-cuisine-1267320.jpg')
file18ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-bar-ceiling-2225577.jpg')
file19ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-building-commerce-1322184.jpg')
file20ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-ceiling-chairs-2290753.jpg')
file21ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-chairs-curtains-279835.jpg')
file22ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/architecture-dining-furniture-1581384.jpg')
file23ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/art-cutlery-dining-262896.jpg')
file24ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bacon-blueberry-blueberry-pancake-1861785.jpg')
file25ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-baking-chef-784633.jpg')
file26ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baked-beer-cheese-724216.jpg')
file28ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/baking-cheese-crust-315755.jpg')
file29ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/banquet-catering-chairs-1395967.jpg')
file30ah = open('https://fullstack-opentable-seeds.s3-us-west-1.amazonaws.com/bar-bottles-commerce-2079438.jpg')

file_array_a = [file01a, file02a, file03a, file04a, file05a,
 file06a, file07a, file08a, file09a, file10a, file11a, file12a,
 file13a, file14a, file15a, file16a, file17a, file18a, file19a, 
 file20a, file21a, file22a, file23a, file24a, file25a]

 file_array_b = [file01b, file02b, file03b, file04b, file05b,
 file06b, file07b, file08b, file09b, file10b, file11b, file12b,
 file13b, file14b, file15b, file16b, file17b, file18b, file19b, 
 file20b, file21b, file22b, file23b, file24b, file25b]

 file_array_c = [file01c, file02c, file03c, file04c, file05c,
 file06c, file07c, file08c, file09c, file10c, file11c, file12c,
 file13c, file14c, file15c, file16c, file17c, file18c, file19c, 
 file20c, file21c, file22c, file23c, file24c, file25c]

 file_array_d = [file01d, file02d, file03d, file04d, file05d,
 file06d, file07d, file08d, file09d, file10d, file11d, file12d,
 file13d, file14d, file15d, file16d, file17d, file18d, file19d, 
 file20d, file21d, file22d, file23d, file24d, file25d]

 file_array_e = [file01e, file02e, file03e, file04e, file05e,
 file06e, file07e, file08e, file09e, file10e, file11e, file12e,
 file13e, file14e, file15e, file16e, file17e, file18e, file19e, 
 file20e, file21e, file22e, file23e, file24e, file25e]

 file_array_f = [file01f, file02f, file03f, file04f, file05f,
 file06f, file07f, file08f, file09f, file10f, file11f, file12f,
 file13f, file14f, file15f, file16f, file17f, file18f, file19f, 
 file20f, file21f, file22f, file23f, file24f, file25f]

 file_array_g = [file01g, file02g, file03g, file04g, file05g,
 file06g, file07g, file08g, file09g, file10g, file11g, file12g,
 file13g, file14g, file15g, file16g, file17g, file18g, file19g, 
 file20g, file21g, file22g, file23g, file24g, file25g]

 file_array_h = [file01h, file02h, file03h, file04h, file05h,
 file06h, file07h, file08h, file09h, file10h, file11h, file12h,
 file13h, file14h, file15h, file16h, file17h, file18h, file19h, 
 file20h, file21h, file22h, file23h, file24h, file25h]


file_array_aa = [file01aa, file02aa, file03aa, file04aa, file05aa,
 file06aa, file07aa, file08aa, file09aa, file10aa, file11aa, file12aa,
 file13aa, file14aa, file15aa, file16aa, file17aa, file18aa, file19aa, 
 file20aa, file21aa, file22aa, file23aa, file24aa, file25aa]

 file_array_ab = [file01ab, file02ab, file03ab, file04ab, file05ab,
 file06ab, file07ab, file08ab, file09ab, file10ab, file11ab, file12ab,
 file13ab, file14ab, file15ab, file16ab, file17ab, file18ab, file19ab, 
 file20ab, file21ab, file22ab, file23ab, file24ab, file25ab]

 file_array_ac = [file01ac, file02ac, file03ac, file04ac, file05ac,
 file06ac, file07ac, file08ac, file09ac, file10ac, file11ac, file12ac,
 file13ac, file14ac, file15ac, file16ac, file17ac, file18ac, file19ac, 
 file20ac, file21ac, file22ac, file23ac, file24ac, file25ac]

 file_array_ad = [file01ad, file02ad, file03ad, file04ad, file05ad,
 file06ad, file07ad, file08ad, file09ad, file10ad, file11ad, file12ad,
 file13ad, file14ad, file15ad, file16ad, file17ad, file18ad, file19ad, 
 file20ad, file21ad, file22ad, file23ad, file24ad, file25ad]

 file_array_ae = [file01ae, file02ae, file03ae, file04ae, file05ae,
 file06ae, file07ae, file08ae, file09ae, file10ae, file11ae, file12ae,
 file13ae, file14ae, file15ae, file16ae, file17ae, file18ae, file19ae, 
 file20ae, file21ae, file22ae, file23ae, file24ae, file25ae]

 file_array_af = [file01af, file02af, file03af, file04af, file05af,
 file06af, file07af, file08af, file09af, file10af, file11af, file12af,
 file13af, file14af, file15af, file16af, file17af, file18af, file19af, 
 file20af, file21af, file22af, file23af, file24af, file25af]

 file_array_ag = [file01ag, file02ag, file03ag, file04ag, file05ag,
 file06ag, file07ag, file08ag, file09ag, file10ag, file11ag, file12ag,
 file13ag, file14ag, file15ag, file16ag, file17ag, file18ag, file19ag, 
 file20ag, file21ag, file22ag, file23ag, file24ag, file25ag]

 file_array_ah = [file01ah, file02ah, file03ah, file04ah, file05ah,
 file06ah, file07ah, file08ah, file09ah, file10ah, file11ah, file12ah,
 file13ah, file14ah, file15ah, file16ah, file17ah, file18ah, file19ah, 
 file20ah, file21ah, file22ah, file23ah, file24ah, file25ah]

files = file_array_a + file_array_b + file_array_c + file_array_d + file_array_e + file_array_f + file_array_g + file_array_h + 
        file_array_aa + file_array_ab + file_array_ac + file_array_ad + file_array_ae + file_array_af + file_array_ag + file_array_ah

50.times do |index|
  res = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        capacity: (1..30).to_a.sample,
        description: Faker::Restaurant.description,
        style: Faker::Restaurant.type,
        neighborhood: ["Hufflepuff", "Slytherin", "Ravenclaw", "Gryffindor"].sample,
        dining_style: ["Fine Dining", "Casual Dining", "Contemporary Casual", " Family Style", "Fast Casual", "Fast Food", "Cafe", "Buffet"].sample,
        dress_code: ["Casual Dress", "Business Casual", "Jacket Preferred", "Jacket Required", "Jacket And Tie Required", "Formal Attire"].sample,
        chef: Faker::Name.name
  )
  8.times do |i|
    res.photos.attach(
      io: files.shift,
      filename: "test_photo.jpg"
    )
  end
end

