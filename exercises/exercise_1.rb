require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base

  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: true, length: { minimum: 0 }

end

class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true

end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false )

puts "Database count: #{Store.count}"
