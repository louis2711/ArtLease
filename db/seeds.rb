# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artpiece.destroy_all

joconde = {user: User.first, title: 'Joconde', artist: 'Leonard De Vinci', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 140, availability: true}
noces_cana = {user: User.first, title: 'Noces de Cana', artist: 'Veronese', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 110, availability: false}
penseur = {user: User.first, title: 'Le Penseur', artist: 'Auguste Rodin', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 80, availability: true}
nympheas = {user: User.first, title: 'Les nymphéas', artist: 'Claude Monet', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 125, availability: false}
nuit_etoilee = {user: User.first, title: 'La nuit étoilée', artist: 'Vincent Van Gogh', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 132, availability: true}
american_gothic = {user: User.first, title: 'American Gothic', artist: 'Grant Wood', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 75, availability: true}
guernica = {user: User.first, title: 'Guernica', artist: 'Pablo Picasso', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 200, availability: true}
promenade = {user: User.first, title: 'La Promenade', artist: 'Claude Monet', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 175, availability: true}
argenteuil = {user: User.first, title: 'Argenteuil', artist: 'Edouard Manet', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 185, availability: true}
cri = {user: User.first, title: 'Le Cri', artist: 'Edvard Munch', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', price: 150, availability: true}



[joconde, noces_cana, penseur, nympheas, nuit_etoilee, american_gothic, guernica, promenade, argenteuil, cri].each do |attributes|
  artpiece = Artpiece.create!(attributes)
end
