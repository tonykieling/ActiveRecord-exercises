require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

store1 = Store.find_by(id: 1)
store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
store1.employees.create(first_name: "First", last_name: "Last name", hourly_rate: 50)
store1.employees.create(first_name: "One", last_name: "More", hourly_rate: 40)
store1.employees.create(first_name: "Employee", last_name: "Surname", hourly_rate: 40)

store2 = Store.find_by(name: "Richmond")
puts "store2 = #{store2.name}"
store2.employees.create(first_name: "Big", last_name: "Boss", hourly_rate: 200)
store2.employees.create(first_name: "The", last_name: "Owner", hourly_rate: 500)
store2.employees.create(first_name: "Tony", last_name: "Kieling", hourly_rate: 60)