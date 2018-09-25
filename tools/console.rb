require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Gallery.new("CoCo's", "Paris")
g2 = Gallery.new("Sun Gallary", "DC")
g3 = Gallery.new("CoCo's", "NY")

a1 = Artist.new("Bob", 45)
a2 = Artist.new("Bill", 5)
a3 = Artist.new("Bee", 12)

p1 = Painting.new("title", "Impressionist", a1, g1)
p2 = Painting.new("title", "Modern", a2, g2)
p3 = Painting.new("title", "Impressionist", a1, g2)
p4 = Painting.new("title", "Impressionist", a3, g3)





binding.pry
