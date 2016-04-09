require 'csv'
require_relative '../app/models/hospital'

Hospital.destroy_all

CSV.foreach('public/Health_Care_Facilities.csv', headers: true) do |facility|
  Hospital.create(
    name: facility[2],
    address: facility[5].split(",")[0..2].join(", "),
    latitude: facility[5][-41..-2].split(", ").first.to_f,
    longitude: facility[5][-41..-2].split(", ").last.to_f )
end

Food.destroy_all

CSV.foreach('public/foods.csv', headers: true) do |facility|
  Food.create(
    name: facility[0],
    address: facility[1] )
end

