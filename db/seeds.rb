require 'csv'
require_relative '../app/models/hospital'

Hospital.destroy_all

CSV.foreach('public/Health_Care_Facilities.csv', headers: true) do |facility|
  Hospital.create(
    name: facility[2],
    address: facility[5].split(",")[0..2].join(", "),
    latitude: facility[5][-41..-2].split(", ").map {|coord| coord.to_f }.first,
    longitude: facility[5][-41..-2].split(", ").map {|coord| coord.to_f }.last )
end



