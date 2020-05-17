# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

g1 = Gallery.create(name: "London Gallery")
g2 = Gallery.create(name: "Some other fancy gallery")
g3 = Gallery.create(name: "Everybody loves this place")


a1 = Artist.create(name: "Gbenga")
a2 = Artist.create(name: "Adao")
a3 = Artist.create(name: "Dan")

p1 = Painting.create(title: "The Woman with the Pearl Earring", artist_id: 1, gallery_id: 2)
p2 = Painting.create(title: "The Demise of Flatiron", artist_id: 2, gallery_id: 3)
p3 = Painting.create(title: "Bring Gack Dan", artist_id: 1, gallery_id: 1)
p4 = Painting.create(title: "Everybody has left Flatiron!", artist_id: 2, gallery_id: 1)