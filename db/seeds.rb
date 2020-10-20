User.destroy_all
u1 = User.create :email => 'stacey@ga.co', :password => 'chicken'
u2 = User.create :email => 'pam@ga.co', :password => 'chicken', :admin => true
puts "#{ User.count } users."

Dropzone.destroy_all
d1 = Dropzone.create :dz_name => 'Sydney Skydivers', :state => 'New South Wales', :latitude => -34.212658, :longitude => 150.666842
d2 = Dropzone.create :dz_name => 'Elderslie', :state => 'New South Wales', :latitude => -32.599549, :longitude => 151.343105
d3 = Dropzone.create :dz_name => 'Nagambie', :state => 'Victoria', :latitude => -36.788749, :longitude => 145.040343
d4 = Dropzone.create :dz_name => 'Skydive Ramblers', :state => 'Queensland', :latitude => -27.069889, :longitude => 152.382466
puts "#{ Dropzone.count } dropzones."


Event.destroy_all
e1 = Event.create :name => 'Freefly bigways', :date => '2020-11-04', :organiser => 'Jesse'
e2 = Event.create :name => '4 way scrambles', :date => '2021-01-24', :organiser => 'Melissa'
e3 = Event.create :name => 'Beginner Wingsuit', :date => '2021-08-31', :organiser => 'Jason'
e4 = Event.create :name => 'Downunder Dynamics', :date => '2021-02-02', :organiser => 'Mason'
e5 = Event.create :name => 'Canopy Course', :date => '2020-11-28', :organiser => 'Jesse'
e6 = Event.create :name => 'Advanced Angles', :date => '2021-02-02', :organiser => 'Ben'
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
puts "#{ Discipline.count } disciplines."

puts "Events and users"
u1.events << e1 << e2
u2.events << e3 << e4 << e2

puts "Dropzones and Events"
d1.events << e5 << e5 << e6
d2.events << e3 << e4 << e2

puts "Disciplines and Events"
e1.disciplines << di2
e2.disciplines << di1
e3.disciplines << di5 << di8

di6.events << e4 << e6
