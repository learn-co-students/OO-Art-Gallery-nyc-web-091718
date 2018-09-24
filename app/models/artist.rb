require 'pry'

class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

def self.all
  @@all
end

#Get a list of all the paintings by a specific artist

  def specific_artist
    Painting.all.select do |painting_instance|
      painting_instance.artist == self
      # binding.pry
    end
  end

# Get a list of all the galleries that a specific artist has paintings in
  def specific_gallery
    self.specific_artist.map do |painting|
      painting.gallery
    end
  end

# Get a list of all cities that contain galleries that a specific artist has paintings in

  def cities
    self.specific_gallery.map do |gallery|
      gallery.city
    end
  end

#Find the average years of experience of all artists

  def self.average_years
    total_years = 0.0
    self.all.each do |artist_instance|
      total_years += artist_instance.years_active.to_f
    end
    total_years / self.all.size.to_f
  end

end
