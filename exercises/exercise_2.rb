require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

p @store1 = Store.find_by(id:1)
p @store2 = Store.find_by(id:2)

@store1.name = "Coquitlam"
@store1.save

