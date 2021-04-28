require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

p Store.sum(:annual_revenue)
pp Store.average(:annual_revenue).to_s

pp @num_stores_over_1m = Store.where(["annual_revenue > ?", 1000000]).count