class Hospital < ActiveRecord::Base
  # Remember to create a migration!

  def self.calculate_distance(a, b)
    Math.sqrt((a.first-b.first)**2 + (a.last-b.last)**2)
  end

  def self.closest_distance(start, array)
    closest_place_index = 0
    shortest_distance = calculate_distance(start, array.first)
    array.each_with_index do |location, index|
      this_distance = calculate_distance(location, start)
      if this_distance < shortest_distance
        closest_place_index = index
      end
    end
    closest_place_index
  end

  def self.find_all_distances
    Hospital.all.pluck(:latitude, :longitude)
  end


end
