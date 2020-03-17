class Guest
    
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select{|trip| trip.guest == self}
    end

    def trip_count
        trips.length        
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        guests = Trip.all.map(&:guest)
#   b = a.select{ |e| a.count(e) > 1 }
        guests.select{|guest| guests.count(guest) > 1}.uniq
    end

    def self.find_all_by_name(name)
        Guest.all.select{|guest| guest.name == name}
    end

end