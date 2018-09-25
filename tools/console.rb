require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("rem", 15)
a2 = Artist.new("dav", 30)
a3 = Artist.new("gogh", 5)

g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("TLM", "Tel")
g3 = Gallery.new("AMA", "Aus")
g4 = Gallery.new("Dino", "NYC")

p1 = Painting.new(a1,g1,"s1","t1")
p2 = Painting.new(a2,g2,"s2","t2")
p3 = Painting.new(a3,g3,"s3","t3")
p4 = Painting.new(a1,g4,"s4","t4")

binding.pry
