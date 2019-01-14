class Listing
  attr_reader :city
  @@all = []

  def initialize(place)
    @place = place
    @@all << self
  end

  def guests
    # array of all guest if stayed at a Listing
    all_guest = []
    Trip.all.each do |listings|
      if listings.listing  == self.place
        all_guest << listings.guest
      end
    end
    all_guest
  end

  def trips
    all_trips = []
    Trip.all.each do |trips|
      all_trips << trips
    end
    all_trips
  end

  def trip_count
    count = 0
    Trip.all.each do |listings|
      if listings.listing == self.place
        count += 1
      end
    end
    count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.select do |cities|
      if cities.city ==

      end
    end
  end

  def self.most_popular
    most_array = []
    Trip.all.each do |trips|
      # trips.max_by { |each_trip| array.count(i) }
      freq = trips.inject(Hash.new(0)) {|k, v| k[v] += 1; k }
      how_many = trips.max_by{|v| freq[v]}
      most_array << how_many
    end
    most_array
  end

end
