# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Kazimierz 50.050407, 19.944658
# Bazylika bozego ciała w krakowie 50.049697, 19.944797
# Cafe Kladka 50.047635, 19.946605
# Stara Synagoga 50.051515, 19.948894
# Muzeum inzynierii miejskiej 50.049679, 19.947022
# Studio Qulinarne 50.049328, 19.947086


# clean seeds
User.destroy_all
PointOfInterest.delete_all
Voivodeship.destroy_all


voivodeship_names = %w[Opolskie Malopolskie Dolnoslaskie Mazowieckie Slaskie]
voivodeship_names.each do |vv|
  Voivodeship.create(name: vv)
end
voivodeships = Voivodeship.all


# Demo user
u = User.create(
  name: 'John Tourist',
  lat: 50.049660,
  lng: 19.944750,
  home_lat: 50.049660,
  home_lng: 19.944750,
  points: 1500,
  voivodeship: Voivodeship.find_by(name: 'Malopolskie')
)

u.point_of_interests << PointOfInterest.create(name: 'Bazylika bozego ciała w krakowie', lat: 50.049697, lng: 19.944797)
u.point_of_interests << PointOfInterest.create(name: 'Cafe Kladka', lat: 50.047635, lng: 19.946605)
u.point_of_interests << PointOfInterest.create(name: 'Stara Synagoga', lat: 50.051515, lng: 19.948894)
u.point_of_interests << PointOfInterest.create(name: 'Muzeum inzynierii miejskiej', lat: 50.049679, lng: 19.947022)
u.point_of_interests << PointOfInterest.create(name: 'Studio Qulinarne', lat: 50.049328, lng: 19.947086)


100.times do
  u = User.create(
    name: FFaker::Name.name,
    lat: rand(50.050000..50.050100),
    lng: rand(19.947030..19.947100),
    home_lat: rand(50.050000..50.050100),
    home_lng: rand(19.947030..19.947100),
    points: rand(1000)
  )
  u.voivodeship = voivodeships[rand(5)]
  u.save
end
