require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


ny = Listing.new("New York")
nj = Listing.new("New Jersey")

jack = Guest.new("Jack Rockafeller")
roxanne = Guest.new("Roxanne Robinson")
josie = Guest.new("Josie Smith")

trip1 = Trip.new(ny, jack)
trip4 = Trip.new(nj, jack)
trip2 = Trip.new(nj, roxanne)
trip3 = Trip.new(nj, josie)
jack.trips
jack.trip_count
Guest.pro_traveller
Guest.find_all_by_name("Jack Rockafeller")

ny.guests
ny.trips
ny.trip_count
Listing.find_by_city("New Jersey")
Listing.most_popular

Pry.start
