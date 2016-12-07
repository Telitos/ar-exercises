require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Marshal", last_name: "Stone", hourly_rate: 15)
@store1.employees.create(first_name: "Sharon", last_name: "Lately", hourly_rate: 10)
@store2.employees.create(first_name: "Langelin", last_name: "Namir", hourly_rate: 15)
@store2.employees.create(first_name: "Marshal", last_name: "Roger", hourly_rate: 17)
@store2.employees.create(first_name: "Sandust", last_name: "Fizel", hourly_rate: 20)
# @store3.employees.create(first_name: "Arielle", last_name: "Durand", hourly_rate: 21)
# @store3.employees.create(first_name: "Danielle", last_name: "Fritz", hourly_rate: 34)

