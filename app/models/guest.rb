class Guest
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def listings
    all_listing = []
    Trip.all.each do |lists|
      if lists.guest == self.name
        all_listing << lists.listing
      end
    end
    all_listing
  end

  def trips
    all_trips = []
    Trip.all.each do |trips|
      if trips.guest == self.name
        all_trips << trips
      end
    end
    all_trips
  end

  def trip_count
    count = 0
    Trip.all.each do |trips|
      if trips.guest == self.name
        count += 1
      end
    end
    count
  end

  def self.all
    @@all
  end

  def self.pro_traveler
    all_guests = []
    Trip.all.each do |trips|
      all_guests << trips
      all_guests.select {|e| all_guests.count(e) > 1}.uniq
    end
    all_guests
  end

  def find_all_by_name(guest_name)
    @@all.select do |names|
      if names.name == guest_name
        @name
      end
    end
  end

end
