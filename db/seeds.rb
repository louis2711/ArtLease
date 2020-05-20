# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"



puts "cleaning the data base"


Artpiece.destroy_all
Booking.destroy_all
User.destroy_all
puts "data base cleaned"

puts "creating users"
louis = User.create(email: "louis@lewagon.fr", first_name: "louis", last_name: "f", password: "testtest")
louis.save!

stan = User.create(email: "stan@lewagon.fr", first_name: "stan", last_name: "s", password: "testtest")
stan.save!

hugues = User.create(email: "hugues@lewagon.fr", first_name: "hugues", last_name: "s", password: "testtest")
hugues.save!

jeanne = User.create(email: "jeanne@lewagon.fr", first_name: "jeanne", last_name: "l", password: "testtest")
jeanne.save!

puts "creating artpieces"
joconde = Artpiece.new(user: User.first, title: 'La Joconde', artist: 'Leonard De Vinci', description: 'Très beau portrait de Mona Lisa par De Vinci. Assez petit, vous pourrez le mettre où vous le souhaitez.', price: 140, availability: true)
file = URI.open('https://images.unsplash.com/photo-1423742774270-6884aac775fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
joconde.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
joconde.save!

noces_cana = Artpiece.new(user: User.first, title: 'Noces de Cana', artist: 'Veronese', description: 'Très ancien tableau, il est très grand donc il faut un mur suffisamment haut et large pour pouvoir le mettre', price: 110, availability: true)
file = URI.open('https://aleteiafrench.files.wordpress.com/2018/04/web-veronese-wedding-at-cana-domaine-public.jpg?quality=100&strip=all&w=720')
noces_cana.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
noces_cana.save!

penseur = Artpiece.new(user: User.first, title: 'Le Penseur', artist: 'Auguste Rodin', description: 'Haute sculpture. Idéal pour un jardin', price: 80, availability: true)
file = URI.open('https://www.museumtv.art/wp-content/uploads/2017/09/le-penseur-rodin-01.jpg')
penseur.photo.attach(io: file, filename: 'noces_cana.png', content_type: 'image/png')
penseur.save!

nympheas = Artpiece.new(user: User.first, title: 'Les nymphéas', artist: 'Claude Monet', description: 'Idéal pour mettre dans une pièce lumineuse. Locations longue durée de préférence', price: 125, availability: true)
file = URI.open('https://cdn.pariscityvision.com/library/image/5624.jpg')
nympheas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nympheas.save!

nuit_etoilee = Artpiece.new(user: User.first, title: 'La nuit étoilée', artist: 'Vincent Van Gogh', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 132, availability: true)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1200px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg')
nuit_etoilee.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nuit_etoilee.save!

american_gothic = Artpiece.new(user: User.first, title: 'American Gothic', artist: 'Grant Wood', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 75, availability: false)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/260px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg')
american_gothic.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
american_gothic.save!

guernica = Artpiece.new(user: User.first, title: 'Guernica', artist: 'Pablo Picasso', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 200, availability: false)
file = URI.open('http://dp.mariottini.free.fr/weekend/madrid/photo/guernica.jpg')
guernica.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
guernica.save!


promenade = Artpiece.new(user: User.first, title: 'La Promenade', artist: 'Claude Monet', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 175, availability: false)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Monet_Umbrella.JPG/1200px-Monet_Umbrella.JPG')
promenade.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
promenade.save!


argenteuil = Artpiece.new(user: User.first, title: 'Argenteuil', artist: 'Edouard Manet', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 185, availability: false)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Edouard_Manet_003.jpg/260px-Edouard_Manet_003.jpg')
argenteuil.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
argenteuil.save!
# cri = {user: User.first, title: 'Le Cri', artist: 'Edvard Munch', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 150, availability: true}



# [joconde, noces_cana, penseur, nympheas, nuit_etoilee, american_gothic, guernica, promenade, argenteuil, cri].each do |attributes|
#   artpiece = Artpiece.create!(attributes)
#   artpiece.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   artpiece.save!
# end
