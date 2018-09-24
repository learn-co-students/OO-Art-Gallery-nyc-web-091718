require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

## TEST DATA ##

a1 = Artist.new("Picasso", 300)
a2 = Artist.new("Rothko", 30)
a3 = Artist.new("Pollock", 40)
a4 = Artist.new("Vermeer", 200)

g1 = Gallery.new("David Zweirner", "NYC")
g2 = Gallery.new("Cold Place", "Chicago")
g3 = Gallery.new("Warm Land", "LA")

p1 = Painting.new("The Rose", "impressionist", a1, g1)
p2 = Painting.new("The Claw", "abstract" , a2, g2)
p3 = Painting.new("The Dot", "minimalist" , a3, g3)
p4 = Painting.new("The Lake", "romantic", a4, g2)
p5 = Painting.new("The Moon", "impressionist", a1, g2)

a1.specific_artist

binding.pry
