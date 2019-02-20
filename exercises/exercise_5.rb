require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "# Total revenue for the entire company (all stores):  $ #{Store.sum("annual_revenue")}\n"

puts "# Average annual revenue for all stores:  $ #{Store.average("annual_revenue")}\n"

number_stores_generating_more_than_1M = Store.where("annual_revenue >= 1000000").count
puts "# Store(s) generating more than $1M annually: #{number_stores_generating_more_than_1M}"

# count = 1
# number_stores_generating_more_than_1M.map do |store|
#   puts "#{count}- Store: #{store.name}  -  Annual Sales: $ #{store.annual_revenue}"
#   count += 1
# end