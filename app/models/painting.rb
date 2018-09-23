class Painting

  attr_reader :title, :style, :artist, :gallery
  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery

    @@all << self
  end

#### Class Methods

  def self.all
    @@all
  end

  def self.styles
    all_styles = self.all.map do |painting|
      painting.style
    end
    all_styles.uniq
  end

end ### End of Painting Class
