class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.paintings.map do |painting|
      painting.artist.name
    end
  end

  def experience
    years = 0

    self.artists.each do |artist|
      my_years = artist.years_active
      years += my_years
    end
    years
  end

#### Class Methods
  def self.all
    @@all
  end

  def self.cities
    self.all.map do |gallery|
      gallery.city
    end
  end
end ### End of Gallery Class

# DONE Get a list of all galleries
#
# DONE Get a list of all cities that have a gallery. A city should not appear more than once in the list.
#
# DONE Get a list of artists that have paintings at a specific gallery
#
# DONE Get a list of the names of artists that have paintings at a specific gallery
#
#  DONE Get the combined years of experience of all artists at a specific gallery
