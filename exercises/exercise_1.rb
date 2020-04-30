require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store1 = Store.create(name: "Burnaby", annual_revenue: 300000, men_apparel: true, women_apparel: true)

store2 = Store.create(name: "Richmond", annual_revenue: 1260000, men_apparel: false, women_apparel: true)

store3 = Store.create(name: "Gastown", annual_revenue: 190000, men_apparel: true, women_apparel: false)

count = Store.count
puts "There are #{count} stores."

