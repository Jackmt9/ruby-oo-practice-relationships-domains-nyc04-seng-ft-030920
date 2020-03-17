class Listing

    attr_accessor :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end
    
    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def guests
        trips.map(&:guest)
    end

    def trip_count
        trips.length
    end

    def self.all
        @@all
    end

    def self.find_by_city(city_name)
        @@all.select{|listing| listing.city == city_name}
    end

    def self.most_popular
        array = Trip.all.map(&:listing)
        array.max_by { |i| array.count(i) }
    end
end