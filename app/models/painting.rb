class Painting

  @@all = []

  def self.all
    @@all
  end

  attr_reader :title, :style, :artist, :gallery

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style

    @artist = artist
    @gallery = gallery

    @@all << self

  end


  def self.painting_styles
    self.all.map do |painting|
      painting.style.uniq
    end
  end

end
