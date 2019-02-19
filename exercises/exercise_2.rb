require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
puts "store1 = #{@store1.name}"
@store1.update(name: "NEW NAME FOR BURNABY STORE")
# another way to do so
# @store1.name = "+NEW NAME FOR BURNABY STORE+"
# @store1.save


@store2 = Store.second
puts "store2 = #{@store2.name}"
# i = Image.find :first

