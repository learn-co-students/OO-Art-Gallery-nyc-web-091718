class Gallery
  attr_accessor :name, :city
  @@all = []

  def self.all
    @@all
  end

  def self.all_cities
    self.all.map do |gallery|
      gallery.city
    end.uniq
  end

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def artists
    Painting.all.select do |painting|
      painting.gallery == self
    end.map do |paint|
      paint.artist
    end
  end

  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  def total_experience
    self.artists.map do |artist|
      artist.years
    end.inject(0){|sum,x| sum+x}
  end

end
