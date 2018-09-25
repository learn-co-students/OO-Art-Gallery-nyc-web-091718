class Gallery

  attr_reader :name, :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.cities
    self.all.map do |gallery|
      gallery.city.uniq
    end
  end

  def artists
    gp = Painting.all.select do |painting|
      painting.gallery == self
    end
    gp.map do |painting|
      painting.artist
    end
  end

  def names
    artists.map do |artist|
      artist.name
    end
  end

  def combined_years
    total = 0
    artists.each do |artist|
      total += artist.years_active
    end
    total
  end

end
