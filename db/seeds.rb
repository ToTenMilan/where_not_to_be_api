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
HelpRequest.destroy_all


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

u.point_of_interests << PointOfInterest.create(name: 'Bazylika Bozego Ciała w Krakowie', lat: 50.049697, lng: 19.944797)
u.point_of_interests << PointOfInterest.create(name: 'Cafe Kladka', lat: 50.047635, lng: 19.946605)
u.point_of_interests << PointOfInterest.create(name: 'Stara Synagoga', lat: 50.051515, lng: 19.948894)
u.point_of_interests << PointOfInterest.create(name: 'Muzeum Inzynierii Miejskiej', lat: 50.049679, lng: 19.947022)
u.point_of_interests << PointOfInterest.create(name: 'Studio Qulinarne', lat: 50.049328, lng: 19.947086)

# Miejsca na Kazimerzu w Krakowie
PointOfInterest.create(name: "Biedronka", lat: 50.055414, lng: 19.948241)
PointOfInterest.create(name: "Da Ggrasso", lat: 50.055793, lng: 19.946943)
PointOfInterest.create(name: "Sempre Taniec & Fitness", lat: 50.055077, lng: 19.947565)
PointOfInterest.create(name: "Hotel Columbus", lat: 50.054002, lng: 19.947780)
PointOfInterest.create(name: "Zaraz Wracam Tu", lat: 50.054002, lng: 19.947780)
PointOfInterest.create(name: "Hamsa", lat: 50.053196, lng: 19.947523)
PointOfInterest.create(name: "Restauracja 'Trezo", lat: 50.053134, lng: 19.946879)
PointOfInterest.create(name: "Alchemia od Kuchni", lat: 50.052259, lng: 19.944969)
PointOfInterest.create(name: "Moon Hostel Kraków", lat: 50.052307, lng: 19.951117)
PointOfInterest.create(name: "Duffy Irish Bar", lat: 50.050406, lng: 19.948896)
PointOfInterest.create(name: "Starka", lat: 50.050723, lng: 19.944358)
PointOfInterest.create(name: "Trattoria Cyklop", lat: 50.051701, lng: 19.943146)
PointOfInterest.create(name: "Tbilisuri", lat: 50.050764, lng: 19.942770)
PointOfInterest.create(name: "Muzeum Etnograficzne", lat: 50.048559, lng: 19.943532)
PointOfInterest.create(name: "Gazownia krakowska", lat: 50.048518, lng: 19.948939)
PointOfInterest.create(name: "Żydowskie Muzeum Galicja", lat: 50.050895, lng: 19.949776)
PointOfInterest.create(name: "Kazimierz The former Jewish District", lat: 50.049517, lng: 19.942899)
PointOfInterest.create(name: "Barakah Theatre", lat: 50.050178, lng: 19.940549)
PointOfInterest.create(name: "Wawel Apartments", lat: 50.049785, lng: 19.936751)
PointOfInterest.create(name: "Chabad Lubawicz", lat: 50.051624, lng: 19.946686)
PointOfInterest.create(name: "Synagoga Remu", lat: 50.052706, lng: 19.947630)
PointOfInterest.create(name: "Synagoga Tempel", lat: 50.052926, lng: 19.944401)
PointOfInterest.create(name: "Kościół pw. Świętej Katarzyny", lat: 50.049743, lng: 19.941118)
PointOfInterest.create(name: "Klasztor św. Pawła Pierwszego Pustelnika", lat: 50.048634, lng: 19.937781)
PointOfInterest.create(name: "Ogrody Ojców Paulinóœ", lat: 50.049164, lng: 19.939455)
PointOfInterest.create(name: "Siłownia Champion", lat: 50.049674, lng: 19.937459)
PointOfInterest.create(name: "Bazylika św. Michała Archanioła i św. Stanisława", lat: 50.048227, lng: 19.937609)
PointOfInterest.create(name: "Snow White Apartments", lat: 50.047132, lng: 19.939272)
PointOfInterest.create(name: "Staromiejskie centrum Kultur Młodzieży", lat: 50.046120, lng: 19.941117)
PointOfInterest.create(name: "Kawiarnia Literacka", lat: 50.047520, lng: 19.943410)
PointOfInterest.create(name: "Ed Red", lat: 50.048753, lng: 19.946350)
PointOfInterest.create(name: "Barka Basia", lat: 50.047651, lng: 19.949000)
PointOfInterest.create(name: "Cocon Music Club", lat: 50.047410, lng: 19.947466)
PointOfInterest.create(name: "Kładka Ojca Bernatka", lat: 50.046604, lng: 19.947573)
PointOfInterest.create(name: "Uzdrowienie Chorych Apteka Bonifratów", lat: 50.046900, lng: 19.944027)
PointOfInterest.create(name: "Kebab pod 13", lat: 50.048312, lng: 19.944059)
PointOfInterest.create(name: "Akita Ramen", lat: 50.048594, lng: 19.942407)
PointOfInterest.create(name: "Youmiko Sushi", lat: 50.050413, lng: 19.943104)
PointOfInterest.create(name: "HEVRE", lat: 50.051185, lng: 19.943415)
PointOfInterest.create(name: "Endzior", lat: 50.051771, lng: 19.944853)
PointOfInterest.create(name: "Plac Nowy 1", lat: 50.051433, lng: 19.945432)
PointOfInterest.create(name: "Żabka", lat: 50.050703, lng: 19.951311)
PointOfInterest.create(name: "Dzielnica Żydowska", lat: 50.052136, lng: 19.948232)
PointOfInterest.create(name: "Szpital Zakonu Bonifratów św. Jana Grandego", lat: 50.047543, lng: 19.945167)
PointOfInterest.create(name: "Kayak Rentals", lat: 50.045476, lng: 19.942882)
PointOfInterest.create(name: "Locked Up", lat: 50.047453, lng: 19.940919)
PointOfInterest.create(name: "skladmuzyczny.pl", lat: 50.047122, lng: 19.940383)
PointOfInterest.create(name: "Wyższe Seminarium Duchowne zakonu Paulinów", lat: 50.048193, lng: 19.938983)
PointOfInterest.create(name: "Tramwaj Wodny Kraków", lat: 50.048703, lng: 19.935818)
PointOfInterest.create(name: "mBank oddział korporacyjny", lat: 50.048603, lng: 19.942003)
PointOfInterest.create(name: "The Secret Garden Hostel", lat: 50.047625, lng: 19.941746)
PointOfInterest.create(name: "Flow Studio Pilates", lat: 50.046743, lng: 19.943715)
PointOfInterest.create(name: "Klerikale Hemden Krakau", lat: 50.047122, lng: 19.943554)
PointOfInterest.create(name: "Teatr Old Timers Garage Krakóœ", lat: 50.048197, lng: 19.945421)
PointOfInterest.create(name: "GA Luxury Apartments Św. Wawrzyńca 21", lat: 50.049341, lng: 19.948581)
PointOfInterest.create(name: "Curry Up", lat: 50.049041, lng: 19.943029)
PointOfInterest.create(name: "Zgromadzenie sióstr św. Augystyna", lat: 50.048769, lng: 19.940277)
PointOfInterest.create(name: "Riverside Blues by Cracow Moods", lat: 50.046344, lng: 19.941472)
PointOfInterest.create(name: "Most Marszałka Józefa Piłsudskiego", lat: 50.045416, lng: 19.945052)
PointOfInterest.create(name: "Barka Arkada", lat: 50.051348, lng: 19.933960)

1000.times do
  u = User.create(
    name: FFaker::Name.name,
    lat: rand(50.039000..50.055100),
    lng: rand(19.930030..19.990100),
    home_lat: rand(50.050000..50.050100),
    home_lng: rand(19.947030..19.947100),
    points: rand(1000)
  )
  u.voivodeship = voivodeships[rand(5)]
  u.save
end

users = User.all.sample(10)

HelpRequest.create(user: User.john_tourist, title: 'Making masks for University Hospital in Cracow',
                   description: FFaker::Lorem.paragraph, target: 3000, unit: 'masks', request_type: :crowd,
                   lat: rand(50.050000..50.050100), lng: rand(19.947030..19.947100))
HelpRequest.create(user: users.shift, title: 'Shopping for Mr. Eugen', time_from: '2020-03-21 14:30', time_to: '2020-03-21 18:30',
                   description: FFaker::Lorem.paragraph, request_type: :single,
                   lat: rand(50.050000..50.050100), lng: rand(19.947030..19.947100))
HelpRequest.create(user: users.shift, title: 'Walk a dog', time_from: '2020-03-21 08:30', time_to: '2020-03-21 10:00',
                   description: FFaker::Lorem.paragraph, request_type: :single,
                   lat: rand(50.050000..50.050100), lng: rand(19.947030..19.947100))
HelpRequest.create(user: users.shift, title: 'Buy a medicine', time_from: '2020-03-20 12:00', time_to: '2020-03-20 16:00',
                   description: FFaker::Lorem.paragraph, request_type: :single,
                   lat: rand(50.050000..50.050100), lng: rand(19.947030..19.947100))
users.each do |user|
  HelpRequest.create(user: user, title: FFaker::Lorem.sentence, request_type: :crowd,
                     description: FFaker::Lorem.paragraph, target: rand(5000), unit: FFaker::Lorem.word,
                     lat: rand(50.050000..50.050100), lng: rand(19.947030..19.947100))
end
