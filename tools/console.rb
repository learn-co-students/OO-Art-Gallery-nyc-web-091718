require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Gallery.new("Gallery 1", "Fresno")
g2 = Gallery.new("Gallery 2", "Seattle")
g3 = Gallery.new("Gallery 3", "NY")

a1 = Artist.new("Da Vinci", 100)
a2 = Artist.new("Rembrandt", 30)
a3 = Artist.new("Van Gogh", 60)

p1 = Painting.new("Cats","abstract", a1, g1)
p2 = Painting.new("Dogs","renaissance", a2, g2)
p3 = Painting.new("Owls","abstract", a3, g3)




binding.pry
0
