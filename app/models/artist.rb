class Artist

  attr_reader :name, :years_active

  @@all = []

  def self.all
    @@all
  end

  def self.average_years
    total = 0
    count =self.all.count
    self.all.each do |artist|
      total += artist.years_active
    end
    total/count
  end

  def initialize(name, years_active)
    @name = name
    @years_active = years_active

    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end
end
