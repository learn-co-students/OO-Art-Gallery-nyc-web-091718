class Gallery

  attr_reader :name, :city

  @@all = []

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
  @@all
end

#Get a list of all cities that have a gallery. A city should not appear more than once in the list
  def self.find_city
    city = self.all.map do |gallery|
      gallery.city
    end
    city.uniq
  end

#Get a list of artists that have paintings at a specific gallery

  def find_artist
    galleries =  Painting.all.select do |painting|
        painting.gallery == self
      end
    galleries.map do |gallery|
      gallery.artist
  end
end

# Get a list of the names of artists that have paintings at a specific gallery
  def find_artist_name
    galleries =  Painting.all.select do |painting|
        painting.gallery == self
      end
    galleries.map do |gallery|
      gallery.artist.name
    end
  end

  #Get the combined years of experience of all artists at a specific gallery

  def combined_years
      # counter = 0.0
    self.find_artist.inject(0) do |sum, artist|
      sum + artist.years_active
  end
end




end
