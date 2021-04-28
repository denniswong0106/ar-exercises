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

class Store < ActiveRecord::Base
  has_many :employees
  validate :must_men_or_women_apparel

  validates :womens_apparel, :mens_apparel, presence: true
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }

  def must_men_or_women_apparel
    unless mens_apparel == true || womens_apparel == true
      errors.add(:womens_apparel, "Either mens_apparel or womens_apparel least must be true")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }

end

# pp @store2.employees.create(
#   first_name: "test", 
#   last_name: "testa",
#   hourly_rate: 40
# )

@store7 = Store.new(
  name: "test",
  annual_revenue: 1,
  womens_apparel: false,
  mens_apparel: false
  )
  @store7.save!

