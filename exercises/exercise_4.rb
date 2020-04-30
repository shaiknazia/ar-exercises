require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.create(name: "Surrey", annual_revenue: 224000, men_apparel: false, women_apparel: true)

store2 = Store.create(name: "Whistler", annual_revenue: 1900000, men_apparel: true, women_apparel: false)

store3 = Store.create(name: "Yaletown", annual_revenue: 430000, men_apparel: true, women_apparel: true)

@men_stores = Store.where("men_apparel = true")

@men_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end

@women_stores = Store.where("women_apparel = true", "annual_revenue < 10000000")

@women_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end