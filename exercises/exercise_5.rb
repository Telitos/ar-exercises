require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@allstores = Store.all
@allstores_revenue = Store.all.sum(:annual_revenue)

puts "Total revenue #{@allstores_revenue}"

@average_revenue = @allstores_revenue/@allstores.size

puts "Number of stores: #{@allstores.size}"

puts "average revenue: #{@average_revenue}"
Inf = 1.0/0.0
@Million_dollar_stores = Store.where(annual_revenue: (1000000..Inf))

puts "There are #{@Million_dollar_stores.size} stores that make over 1M in annual revenue"