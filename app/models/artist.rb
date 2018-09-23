class Artist

  attr_reader :name
  attr_accessor :years_active
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active

    @@all << self
  end

  def new_painting(title, style, gallery)
    Painting.new(title, style, self, gallery)
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |painting|
      painting.city
    end
  end

#### Class Methods
  def self.all
    @@all
  end

  def self.avg_experience
    years = 0
    artists = 0

    all.each do |artist|
    my_years = artist.years_active
      years += my_years
      artists += 1
    end
    years / artists
  end

end ### End of Artist Class

# DONE Get a list of all artists
#
# DONE Get a list of all the paintings by a specific artists
#
# DONE Get a list of all the galleries that a specific artist has paintings in
#
# DONE Get a list of all cities that contain galleries that a specific artist has paintings in
#
# DONE Find the average years of experience of all artists
