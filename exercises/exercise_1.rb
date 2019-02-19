require_relative '../setup'
require_relative '../lib/store'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
Burnaby = Store.create name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true

# Richmond (annual_revenue of 1260000 carries women's apparel only)
Richmond = Store.create name: "Richmond", annual_revenue: 1260000, womens_apparel: true

# # Gastown (annual_revenue of 190000 carries men's apparel only)
Gastown = Store.create name: "Gastown", annual_revenue: 190000, mens_apparel: true

puts "Number of STORES:  #{Store.count}"

