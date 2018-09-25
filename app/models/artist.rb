class Artist
  attr_accessor :name, :years
  @@all = []

  def self.all
    @@all
  end

  def self.average_experience
    @@all.map do |artist|
      artist.years
    end.inject(0){|sum,x| sum+x}.to_f / @@all.size.to_f
  end

  def initialize(name,years)
    @name = name
    @years = years
    @@all << self
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
    self.galleries.map do |gallery|
      gallery.city
    end
  end
  
end #end of Artist class
