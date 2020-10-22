User.destroy_all
u1 = User.create :email => 'stacey@gmail.com', :password => 'chicken', :name => 'Stacey', :license => '#A2450'
u2 = User.create :email => 'pam@gmail.com', :password => 'chicken', :name => 'Pam', :license => '#A2450', :admin => true
puts "#{ User.count } users."

Dropzone.destroy_all
d1 = Dropzone.create :dz_name => 'Sydney Skydivers', :state => 'New South Wales', :latitude => -34.212658, :longitude => 150.666842, :image => "/assets/Picton.jpg"
d2 = Dropzone.create :dz_name => 'Newcastle Sport Parachute Club', :state => 'New South Wales', :latitude => -32.599549, :longitude => 151.343105
d3 = Dropzone.create :dz_name => 'Nagambie Skydive', :state => 'Victoria', :latitude => -36.788749, :longitude => 145.040343
d4 = Dropzone.create :dz_name => 'Skydive Ramblers', :state => 'Queensland', :latitude => -27.069889, :longitude => 152.382466
d5 = Dropzone.create :dz_name => 'Skydive Uluru', :state => 'Northern Territory', :latitude => -25.241255, :longitude => 130.983078, :image => "/assets/Uluru-Airwax.jpg"
d6 = Dropzone.create :dz_name => 'Skydive Byron Bay', :state => 'New South Wales', :latitude => -28.593655, :longitude => 153.547029
d7 = Dropzone.create :dz_name => 'Far North Freefall', :state => 'Queensland', :latitude => -17.929217, :longitude => 145.937093, :image => "/assets/TullyCanopy.png"
d8 = Dropzone.create :dz_name => 'Skydive Jurien Bay', :state => 'Perth', :latitude => -30.304556, :longitude => 115.039028
d9 = Dropzone.create :dz_name => 'Skydive York', :state => 'Perth', :latitude => -31.823422, :longitude => 116.797508
d10 = Dropzone.create :dz_name => 'Skydive Oz', :state => 'New South Wales', :latitude => -35.903887, :longitude => 150.141778, :image => '/assets/Moruya2.jpg'

puts "#{ Dropzone.count } dropzones."


Event.destroy_all
e1 = Event.create :name => 'Freefly bigways', :date => '2020-11-04', :organiser => 'Chicko', :coach => 'Focus', :image => '/assets/Sitfly.jpg', :price => '120', :contact => 'chicko@gmail.com'
e2 = Event.create :name => '4 way scrambles', :date => '2021-01-24', :organiser => 'Melissa Johnson', :coach => 'Melissa Johnson', :image => '/assets/Bigway2.jpg', :price => '120', :contact => 'sky_mel@gmail.com'
e3 = Event.create :name => 'Beginner Wingsuit', :date => '2021-08-31', :organiser => 'Jason Mcentee', :coach => 'Jason Fitch', :image => '/assets/Wingsuit3.jpeg', :price => '60', :contact => 'blueskies@gmail.com'
e4 = Event.create :name => 'Downunder Dynamics', :date => '2021-02-02', :organiser => 'Mason Lewis', :coach => 'DD team', :image => '/assets/Dynamic.png', :price => '110', :contact => 'downunder_dynamics@hotmail.com'
e5 = Event.create :name => 'Canopy Course', :date => '2020-11-28', :organiser => 'Cameron Dae', :coach => 'Cameron Dae', :image => '/assets/Canopy3.png', :price => '120', :contact => 'info@flight1.com'
e6 = Event.create :name => 'Advanced Angles', :date => '2021-03-06', :organiser => 'Ben Cuttler', :coach => 'Ben Cuttler', :image => '/assets/Angle.png', :price => '100', :contact => 'benji@gmail.com'
e7 = Event.create :name => 'Swoop Course', :date => '2021-08-02', :organiser => 'Felix Lavis', :coach => 'Felix Lavis', :image => '/assets/Swoop.jpg', :price => '120', :contact => 'fexix@yahoo.com'
e8 = Event.create :name => 'CRW', :date => '2021-05-04', :organiser => 'Ben Jones', :coach => 'Ben Jones', :image => '/assets/Canopy1.png', :price => '50', :contact => 'jonesy@gmail.com'
puts "#{ Event.count } events."

Discipline.destroy_all
di1 = Discipline.create :name => 'Flat Flying'
di2 = Discipline.create :name => 'Free Flying'
di3 = Discipline.create :name => 'Canopy'
di4 = Discipline.create :name => 'Angles'
di5 = Discipline.create :name => 'Wingsuit flying'
di6 = Discipline.create :name => 'Night jumps'
di7 = Discipline.create :name => 'Boogie'
di8 = Discipline.create :name => 'Competition'
di9 = Discipline.create :name => 'Tracking'

puts "#{ Discipline.count } disciplines."

puts "Events and users"
u1.events << e1 << e2 << e8
u2.events << e3 << e4 << e2

puts "Dropzones and Events"
d1.events << e5 << e5 << e6
d2.events << e3 << e4 << e2
d3.events << e7 << e8
d4.events << e8
d5.events << e8 << e6
d6.events << e8 << e6
d7.events << e3 << e5 << e4
d8.events << e1 << e5 << e4
d9.events << e2 << e6 << e3

puts "Disciplines and Events"
e1.disciplines << di2
e2.disciplines << di1
e3.disciplines << di5 << di8
e4.disciplines << di1
e5.disciplines << di1
e6.disciplines << di1
e7.disciplines << di1
e8.disciplines << di1



di6.events << e4 << e6
