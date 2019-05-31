# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Submission.destroy_all
Request.destroy_all
Track.destroy_all
UserInstrument.destroy_all
Instrument.destroy_all
UserGenre.destroy_all
Genre.destroy_all
User.destroy_all


puts 'Creating genres!'

Genre.create!(
  name: 'Rock'
  )

Genre.create!(
  name: 'Pop'
  )

Genre.create!(
  name: 'Blues'
  )

Genre.create!(
  name: 'Dance'
  )

Genre.create!(
  name: 'Techno'
  )

Genre.create!(
  name: 'Country and Western'
  )

Genre.create!(
  name: 'Bluegrass'
  )

Genre.create!(
  name: 'Michael Wong Style'
  )

puts "#{Genre.count} Genres created"
puts 'Creating Instruments!'

Instrument.create!(
  name: 'Accordion'
  )

Instrument.create!(
  name: 'Bass Guitar'
  )

Instrument.create!(
  name: 'Bassoon'
  )

Instrument.create!(
  name: 'Bugle'
  )

Instrument.create!(
  name: 'Cello'
  )

Instrument.create!(
  name: 'Clarinet'
  )

Instrument.create!(
  name: 'Flute'
  )

Instrument.create!(
  name: 'French Horn'
  )

Instrument.create!(
  name: 'Grand Piano'
  )

Instrument.create!(
  name: 'Acoustic Guitar'
  )

Instrument.create!(
  name: 'Harmonica'
  )

Instrument.create!(
  name: 'Harp'
  )

Instrument.create!(
  name: 'Oboe'
  )

Instrument.create!(
  name: 'Pan Flute'
  )

Instrument.create(
  name: 'Piano'
  )

Instrument.create!(
  name: 'Piccolo'
  )

Instrument.create!(
  name: 'Saxophone'
  )

Instrument.create!(
  name: 'Trumpet'
  )

Instrument.create!(
  name: 'Trombone'
  )

Instrument.create!(
  name: 'Tuba'
  )

Instrument.create!(
  name: 'Ukulele'
  )

Instrument.create!(
  name: 'Violin'
  )

Instrument.create!(
  name: 'Viola'
  )

Instrument.create!(
  name: 'Percussion'
  )

Instrument.create!(
  name: 'Xylophone'
  )

Instrument.create!(
  name: 'Zither'
  )

Instrument.create!(
  name: 'Electric Guitar'
  )

Instrument.create!(
  name: 'Bass'
  )

Instrument.create!(
  name: 'Zither'
  )


puts "#{Instrument.count} Instruments created"
puts 'Creating Users'

User.create!(
  username: 'xxx_DatBoi4$0_xxx',
  email: 'geoff.butler@example.com',
  password: '123456',
  first_name: 'Geoff',
  last_name: 'Butler',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'BubbsBunny',
  email: 'Erikhammond@example.com',
  password: '123456',
  first_name: 'Erik',
  last_name: 'Hammond',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'MusicalMastermind',
  email: 'AlexanderVoggenhuber@example.com',
  password: '123456',
  first_name: 'Alexander',
  last_name: 'Voggenhuber',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'LinkedIn_Park',
  email: 'Dave.Davidson@example.co.uk',
  password: '123456',
  first_name: 'Dave',
  last_name: 'Davidson',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'Tovarish_Tunes',
  email: '123Vassili@example.ru',
  password: '123456',
  first_name: 'Vassili',
  last_name: 'Antonov',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'BerndtDasBrot',
  email: 'BDBrot@example.com',
  password: '123456',
  first_name: 'Berndt',
  last_name: 'Oettinger',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'Mr_Traumatic',
  email: 'welshboy@example.com',
  password: '123456',
  first_name: 'Simon',
  last_name: 'May',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

User.create!(
  username: 'Ludwig_van_Beathoven',
  email: 'HughMungus@example.com.',
  password: '123456',
  first_name: 'Hugh',
  last_name: 'Mungus',
  biography: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi laboriosam perferendis ea, omnis! Eligendi animi pariatur accusamus inventore autem. Tempora voluptatem maxime necessitatibus, blanditiis vero obcaecati officia quibusdam quis nobis!',
  facebook_url: ''
  )

puts "#{User.count} Users created"
puts 'Creating User Instruments'

UserInstrument.create!(
  user: User.find_by(username: 'Ludwig_van_Beathoven'),
  instrument: Instrument.find_by(name: 'Trumpet')
  )

UserInstrument.create!(
  user: User.find_by(username: 'Mr_Traumatic'),
  instrument: Instrument.find_by(name: 'Oboe')
  )

UserInstrument.create!(
  user: User.find_by(username: 'BerndtDasBrot'),
  instrument: Instrument.find_by(name: 'Trumpet')
  )

UserInstrument.create!(
  user: User.find_by(username: 'Tovarish_Tunes'),
  instrument: Instrument.find_by(name: 'Bass Guitar')
  )

UserInstrument.create!(
  user: User.find_by(username: 'LinkedIn_Park'),
  instrument: Instrument.find_by(name: 'French Horn')
  )

UserInstrument.create!(
  user: User.find_by(username: 'MusicalMastermind'),
  instrument: Instrument.find_by(name: 'Violin')
  )

UserInstrument.create!(
  user: User.find_by(username: 'BubbsBunny'),
  instrument: Instrument.find_by(name: 'Piano')
  )

UserInstrument.create!(
  user: User.find_by(username: 'xxx_DatBoi4$0_xxx'),
  instrument: Instrument.find_by(name: 'Piano')
  )

puts "#{UserInstrument.count} User Instruments created"
puts 'Creating Tracks'

Track.create!(
  user: User.find_by(username: 'Ludwig_van_Beathoven'),
  name: 'Symphony No. 10',
  bpm: 75,
  time_signature: '6/12',
  key: 'Abm7',
  duration: 1200,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559223793/Richard_Wagner_-_Ride_Of_The_Valkyries-GGU1P6lBW6Q_weclof.wav'
  )

Track.create!(
  user: User.find_by(username: 'Mr_Traumatic'),
  name: 'the silence of sound',
  bpm: 100,
  time_signature: '4/4',
  key: 'Gmj',
  duration: 240,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225198/Oliver_Heldens_-_Gecko_Original_Mix-jjx2oc2NRzA_ti3ja2.wav'
  )

Track.create!(
  user: User.find_by(username: 'BerndtDasBrot'),
  name: 'Whole Grain',
  bpm: 90,
  time_signature: '4/4',
  key: 'Am',
  duration: 200,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225340/perry_como_papa_loves_mambo-ujB-BZn3C4g_hz34jz.wav'
  )

Track.create!(
  user: User.find_by(username: 'Tovarish_Tunes'),
  name: 'Our Song',
  bpm: 110,
  time_signature: '3/4',
  key: 'Fmj7',
  duration: 300,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225504/The_Red_Army_Choir_Sacred_War.-1KE_Sip9woI_xwjfd2.wav'
  )

Track.create!(
  user: User.find_by(username: 'LinkedIn_Park'),
  name: 'Number',
  bpm: 125,
  time_signature: '4/4',
  key: 'Cmj',
  duration: 236,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225838/Falco_-_Der_Kommissar_Official_Video-8-bgiiTxhzM_kigsqa.wav'
  )

Track.create!(
  user: User.find_by(username: 'MusicalMastermind'),
  name: 'Violin Concerto 4. Op. 57',
  bpm: 99,
  time_signature: '6/6',
  key: 'Fbm5',
  duration: 1674,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225617/Queen_-_Bohemian_Rhapsody_Official_Video-fJ9rUzIMcZQ_s0gxao.wav'
  )

Track.create!(
  user: User.find_by(username: 'BubbsBunny'),
  name: 'Looony Tunes',
  bpm: 375,
  time_signature: '2/2',
  key: 'Cmj',
  duration: 187,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225960/Bugs_Bunny_Theme-fWkdCsruXV0_hjstwm.wav'
  )

Track.create!(
  user: User.find_by(username: 'xxx_DatBoi4$0_xxx'),
  name: 'my first song',
  bpm: 100,
  time_signature: '2/2',
  key: 'Fmj',
  duration: 200,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559226084/Charles_Mingus_-_Moanin-__OSyznVDOY_wirx3d.wav'
  )

puts "#{Track.count} Tracks created"
puts "Creating Requests"

Request.create!(
  track: Track.find_by(name: 'my first song'),
  instrument: Instrument.find_by(name: 'Bass Guitar'),
  start_second: 25,
  end_second: 100,
  description: "Smooth as butter. Saxophone and imporv as it was meant to be! However, It's missing something, A Clarinet to accompany the Sax!"
  )

Request.create!(
  track: Track.find_by(name: 'Number'),
  instrument: Instrument.find_by(name: 'Violin'),
  start_second: 5,
  end_second: 18,
  description: "Would love a piano riff after the refrain! something to add to the 80s drum machine!"
  )

Request.create!(
  track: Track.find_by(name: 'Our Song'),
  instrument: Instrument.find_by(name: 'Trumpet'),
  start_second: 110,
  end_second: 157,
  description: "Some French horns High above the ringing trombones on the bridge."
  )

Request.create!(
  track: Track.find_by(name: 'Symphony No. 10'),
  instrument: Instrument.find_by(name: 'Piano'),
  start_second: 382,
  end_second: 555,
  description: "Already kinda perfect, perhaps some sublte violin Arpeggios above the first few"
  )

Request.create!(
  track: Track.find_by(name: 'Looony Tunes'),
  instrument: Instrument.find_by(name: 'Piano'),
  start_second: 12,
  end_second: 27,
  description: "A THICCC trap beat plz. with bouncing high hats and more!"
  )

Request.create!(
  track: Track.find_by(name: 'Violin Concerto 4. Op. 57'),
  instrument: Instrument.find_by(name: 'Violin'),
  start_second: 193,
  end_second: 222,
  description: "Just more of the same thing really... :("
  )

Request.create!(
  track: Track.find_by(name: 'Whole Grain'),
  instrument: Instrument.find_by(name: 'Trumpet'),
  start_second: 22,
  end_second: 42,
  description: "A Sick Beat on the Marimas, please."
  )

Request.create!(
  track: Track.find_by(name: 'the silence of sound'),
  instrument: Instrument.find_by(name: 'Oboe'),
  start_second: 0,
  end_second: 200,
  description: "Some Vocals."
  )

puts "#{Request.count} Requests created"
puts "SEEDED!"
