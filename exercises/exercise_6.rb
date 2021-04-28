require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Bill", 
  last_name: "Lee",
  hourly_rate: 40
)

@store2.employees.create(
  first_name: "John", 
  last_name: "King",
  hourly_rate: 100
)

@store2.employees.create(
  first_name: "Bob", 
  last_name: "Builder",
  hourly_rate: 150
)

@store4.employees.create(
  first_name: "Bob", 
  last_name: "Tilter",
  hourly_rate: 45
)
@store5.employees.create(
  first_name: "Jean", 
  last_name: "Pustel",
  hourly_rate: 80
)