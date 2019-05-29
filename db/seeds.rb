# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Request.destroy_all
Track.destroy_all
UserInstrument.destroy_all
User.destroy_all
Instrument.destroy_all

UserInstrument.destroy_all

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
  username: 'xxx_DatBoi420_xxx',
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
  user: User.find_by(username: 'xxx_DatBoi420_xxx'),
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
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'Mr_Traumatic'),
  name: 'the silence of sound',
  bpm: 100,
  time_signature: '4/4',
  key: 'Gmj',
  duration: 240,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'BerndtDasBrot'),
  name: 'Whole Grain',
  bpm: 90,
  time_signature: '4/4',
  key: 'Am',
  duration: 200,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'Tovarish_Tunes'),
  name: 'Our Song',
  bpm: 110,
  time_signature: '3/4',
  key: 'Fmj7',
  duration: 300,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'LinkedIn_Park'),
  name: 'Number',
  bpm: 125,
  time_signature: '4/4',
  key: 'Cmj',
  duration: 236,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'MusicalMastermind'),
  name: 'Violin Concerto 4. Op. 57',
  bpm: 99,
  time_signature: '6/6',
  key: 'Fbm5',
  duration: 1674,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'BubbsBunny'),
  name: 'Looony Tunes',
  bpm: 375,
  time_signature: '2/2',
  key: 'Cmj',
  duration: 187,
  file_url: ''
  )

Track.create!(
  user: User.find_by(username: 'xxx_DatBoi420_xxx'),
  name: 'my first song',
  bpm: 100,
  time_signature: '2/2',
  key: 'Fmj',
  duration: 200,
  file_url: ''
  )

puts "#{Track.count} Tracks created"
puts "Creating Requests"

Request.create!(
  track: Track.find_by(name: 'my first song'),
  instrument: Instrument.find_by(name: 'Bass Guitar'),
  start_second: 25,
  end_second: 100
  )

Request.create!(
  track: Track.find_by(name: 'Number'),
  instrument: Instrument.find_by(name: 'Violin'),
  start_second: 5,
  end_second: 18
  )

Request.create!(
  track: Track.find_by(name: 'Our Song'),
  instrument: Instrument.find_by(name: 'Trumpet'),
  start_second: 110,
  end_second: 157
  )

Request.create!(
  track: Track.find_by(name: 'Symphony No. 10'),
  instrument: Instrument.find_by(name: 'Piano'),
  start_second: 382,
  end_second: 555
  )

puts "#{Request.count} Requests created"
puts "SEEDED!"
