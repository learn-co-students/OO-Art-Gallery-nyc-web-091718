class Painting
  attr_reader :artist, :gallery, :style, :title

  @@all = []

  def self.all
    @@all
  end

  def self.styles
    self.all.map do |paint|
      paint.style
    end.uniq
  end

  def initialize(artist, gallery, style, title)
    @artist = artist
    @gallery = gallery
    @style = style
    @title = title

    @@all << self
  end

end
