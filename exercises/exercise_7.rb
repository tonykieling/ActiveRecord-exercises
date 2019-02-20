require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


# puts "testing employees that broken the rules' validation"
# Employee.create(first_name: "", last_name: "Employee", hourly_rate: 60)
# Employee.create(first_name: "First", last_name: "", hourly_rate: 60)
# Employee.create(first_name: "Name1", last_name: "Employee", hourly_rate: 39)
# Employee.create(first_name: "Name2", last_name: "Employee", hourly_rate: 201)
# temp_employee = Employee.new(first_name: "Test", last_name: "Employee", hourly_rate: 200)
# puts "#{temp_employee.first_name} #{temp_employee.last_name}"
# temp_employee.save


# puts "\n\ntesting store's name with 2 characters (Error)"
# # Store.create name: "Ab", annual_revenue: 190000, mens_apparel: true
# # Store.create name: "TEST Store", annual_revenue: -1, mens_apparel: true

# puts "\ntesting BONUS, no womens OR mens_apparel"
# temp = Store.create name: "TEST2 Store", annual_revenue: 1000
# puts "Error: #{temp.errors.messages}"

puts "Please inform the store's name: "
temp_store_name = gets.chomp
try = Store.create name: temp_store_name
if try.errors.messages.length > 0
  count = 1
  try.errors.messages.each do |error|
    puts "Error #{count}- #{error}"
    count += 1
  end
end
# puts "Error: #{try.errors.messages}"