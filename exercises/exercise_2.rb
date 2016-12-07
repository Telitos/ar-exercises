require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"


@store1 = Store.find(1)
@store2 = Store.find(2)

puts "That is store 1: #{@store1.name}"

@store1.name = "Bartleby"

puts "That is the new store 1: #{@store1.name}"

@store1.save