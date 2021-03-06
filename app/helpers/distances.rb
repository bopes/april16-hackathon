

# write a method that takes two coordinate pairs as arguments,
# and returns the distance between the two points
def calculate_distance(a, b)
  Math.sqrt((a.first-b.first)**2 + (a.last-b.last)**2)
end

def closest_distance(start, array)
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



def find_all_distances
  # Hospital.all
end
p find_all_distances
