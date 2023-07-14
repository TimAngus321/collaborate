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
Message.destroy_all
User.destroy_all
Channel.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

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

Genre.create!(
  name: 'Swing'
  )

Genre.create!(
  name: 'DnB'
  )

Genre.create!(
  name: 'Jazz'
  )

Genre.create!(
  name: 'House'
  )

Genre.create!(
  name: 'LoFi'
  )

Genre.create!(
  name: 'Blues'
  )

Genre.create!(
  name: 'Reggae'
  )

Genre.create!(
  name: 'Ska'
  )

Genre.create!(
  name: 'Hip Hop'
  )

Genre.create!(
  name: 'Trap'
  )

Genre.create!(
  name: 'Big Band'
  )

Genre.create!(
  name: 'R&B'
  )

Genre.create!(
  name: 'Soul'
  )

Genre.create!(
  name: 'Hard Rock'
  )

Genre.create!(
  name: 'Avant-Garde'
  )

Genre.create!(
  name: 'Berlin Techno'
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
  name: 'Drums'
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
  username: 'Lead Blimp',
  email: 'geoff.butler@example.com',
  password: '123456',
  first_name: 'Geoff',
  last_name: 'Butler',
  biography: 'Devoted music nerd. Pop culture evangelist. Award-winning tv aficionado. Web fan. Hardcore bacon fanatic.',
  facebook_url: ''
  )

User.create!(
  username: "Alex'sSounds",
  email: 'erikhammond@example.com',
  password: '123456',
  first_name: 'Erik',
  last_name: 'Hammond',
  biography: 'Wannabe troublemaker. Coffee fanatic. Unapologetic musicaholic. Avid zombie nerd.',
  facebook_url: ''
  )

User.create!(
  username: 'LinkedIn Park',
  email: 'dave.davidson@example.co.uk',
  password: '123456',
  first_name: 'Dave',
  last_name: 'Davidson',
  biography: 'Pop culture advocate. Infuriatingly humble communicator. Music fanatic. Friendly thinker.',
  facebook_url: ''
  )

User.create!(
  username: 'Tovarish_Tunes',
  email: '123vassili@example.ru',
  password: '123456',
  first_name: 'Vassili',
  last_name: 'Antonov',
  biography: 'Tv evangelist. Friendly travel ninja. Writer. Avid troublemaker. Organizer.',
  facebook_url: '',
  photo: "http://res.cloudinary.com/beartechnologies/image/upload/c_fill,h_300,w_400/vkiwqncnxmnbsrhw32ye.jpg"
  )

User.create!(
  username: 'SubtleSounds',
  email: 'bdbrot@example.com',
  password: '123456',
  first_name: 'Berndt',
  last_name: 'Oettinger',
  biography: 'Writer. Wannabe thinker. Devoted gamer. Student. Internet enthusiast. Introvert. Explorer.',
  facebook_url: ''
  )

User.create!(
  username: 'Steve',
  email: 'welshboy@example.com',
  password: '123456',
  first_name: 'Simon',
  last_name: 'May',
  biography: 'Internetaholic. Certified alcohol buff. Beer. Food. Good Music.',
  facebook_url: ''
  )

User.create!(
  username: 'Ludwig van Beathoven',
  email: 'hughmungus@example.com',
  password: '123456',
  first_name: 'Hugh',
  last_name: 'Mungus',
  biography: 'Student. Award-winning entrepreneur. Hipster-friendly introvert. Infuriatingly humble organizer.',
  facebook_url: ''
  )

puts "#{User.count} Users created"
puts 'Creating User Instruments'

UserInstrument.create!(
  user: User.find_by(username: 'Ludwig van Beathoven'),
  instrument: Instrument.find_by(name: 'Trumpet')
  )

UserInstrument.create!(
  user: User.find_by(username: 'Steve'),
  instrument: Instrument.find_by(name: 'Oboe')
  )

UserInstrument.create!(
  user: User.find_by(username: 'SubtleSounds'),
  instrument: Instrument.find_by(name: 'Trumpet')
  )

UserInstrument.create!(
  user: User.find_by(username: 'Tovarish_Tunes'),
  instrument: Instrument.find_by(name: 'Bass Guitar')
  )

UserInstrument.create!(
  user: User.find_by(username: 'LinkedIn Park'),
  instrument: Instrument.find_by(name: 'French Horn')
  )

UserInstrument.create!(
  user: User.find_by(username: "Alex'sSounds"),
  instrument: Instrument.find_by(name: 'Piano')
  )

UserInstrument.create!(
  user: User.find_by(username: 'Lead Blimp'),
  instrument: Instrument.find_by(name: 'Piano')
  )

puts "#{UserInstrument.count} User Instruments created"
puts 'Creating Tracks'

Track.create!(
  user: User.find_by(username: 'Ludwig van Beathoven'),
  name: 'Symphony No. 10',
  bpm: 75,
  time_signature: '6/12',
  key: 'Abm7',
  duration: 1200,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559749242/Parov_Stelar_-_Jimmy_s_Gang_stcavq.mp3'
  )

Track.create!(
  user: User.find_by(username: 'Steve'),
  name: 'the silence of sound',
  bpm: 100,
  time_signature: '4/4',
  key: 'Gmj',
  duration: 240,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225198/Oliver_Heldens_-_Gecko_Original_Mix-jjx2oc2NRzA_ti3ja2.wav'
  )

Track.create!(
  user: User.find_by(username: 'SubtleSounds'),
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
  user: User.find_by(username: 'LinkedIn Park'),
  name: 'Number',
  bpm: 125,
  time_signature: '4/4',
  key: 'Cmj',
  duration: 236,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559749604/George_Gerhwin_-_I_ve_Got_Rhythm_qfarad.mp3'
  )

Track.create!(
  user: User.find_by(username: "Alex'sSounds"),
  name: 'Looony Tunes',
  bpm: 375,
  time_signature: '2/2',
  key: 'Cmj',
  duration: 187,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559225960/Bugs_Bunny_Theme-fWkdCsruXV0_hjstwm.wav'
  )

Track.create!(
  user: User.find_by(username: 'Lead Blimp'),
  name: 'Life Through A Lens',
  bpm: 100,
  time_signature: '2/2',
  key: 'Fmj',
  duration: 200,
  remote_file_url: 'https://res.cloudinary.com/beartechnologies/video/upload/v1559749450/Rick_and_Morty_-_Evil_Morty_fqbruk.mp3'
  )

puts "#{Track.count} Tracks created"
puts "Creating Requests"

Request.create!(
  track: Track.find_by(name: 'Life Through A Lens'),
  instrument: Instrument.find_by(name: 'Bass Guitar'),
  region_start: 25,
  region_end: 100,
  description: "Smooth as butter. Saxophone and imporv as it was meant to be! However, It's missing something, A Clarinet to accompany the Sax!"
  )

Request.create!(
  track: Track.find_by(name: 'Number'),
  instrument: Instrument.find_by(name: 'Violin'),
  region_start: 100,
  region_end: 180,
  description: "Would love a piano riff after the refrain! something to add to the 80s drum machine!"
  )

# Request.create!(
#   track: Track.find_by(name: 'Our Song'),
#   instrument: Instrument.find_by(name: 'Trumpet'),
#   region_start: 110,
#   region_end: 157,
#   description: "Some French horns High above the ringing trombones on the bridge."
#   )

Request.create!(
  track: Track.find_by(name: 'Symphony No. 10'),
  instrument: Instrument.find_by(name: 'Piano'),
  region_start: 100,
  region_end: 200,
  description: "Already kinda perfect, perhaps some sublte violin Arpeggios above the first few"
  )

Request.create!(
  track: Track.find_by(name: 'Looony Tunes'),
  instrument: Instrument.find_by(name: 'Piano'),
  region_start: 15,
  region_end: 25,
  description: "A deep trap beat please, with bouncing high hats and more!"
  )

# Request.create!(
#   track: Track.find_by(name: 'Your Touch'),
#   instrument: Instrument.find_by(name: 'Violin'),
#   region_start: 193,
#   region_end: 222,
#   description: "Just more of the same thing really... :("
#   )

# Request.create!(
#   track: Track.find_by(name: 'Whole Grain'),
#   instrument: Instrument.find_by(name: 'Trumpet'),
#   region_start: 22,
#   region_end: 42,
#   description: "A Sick Beat on the Marimas, please."
#   )

# Request.create!(
#   track: Track.find_by(name: 'the silence of sound'),
#   instrument: Instrument.find_by(name: 'Oboe'),
#   region_start: 0,
#   region_end: 200,
#   description: "Some Vocals."
#   )

names = %w(general music collaborations)
nicknames = %w(Timothy Peter Fabio Slash Bob)

channels = names.map do |name|
  Channel.find_or_create_by(name: name)
end

users = nicknames.map do |nickname|
  User.create(email: "#{nickname.downcase}@example.com", nickname: nickname, password: "testtest")
end

20.times do
  Message.create! user: users.sample, channel: channels.sample, content: Faker::Music::RockBand.name
end

puts 'Channels:'
channels.each do |channel|
  puts "- #{channel.id}: #{channel.name}"
end

puts "#{Request.count} Requests created"
puts "SEEDED!"
