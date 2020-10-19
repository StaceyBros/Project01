User.destroy_all
u1 = User.create :email => 'stacey@ga.co', :password => 'chicken'
u2 = User.create :email => 'pam@ga.co', :password => 'chicken', :admin => true
puts "#{ User.count } users."

Dropzone.destroy_all
d1 = Dropzone.create :dz_name => 'Sydney Skydivers', :state => 'New South Wales'
d2 = Dropzone.create :dz_name => 'Elderslie', :state => 'New South Wales'
d3 = Dropzone.create :dz_name => 'Nagambie', :state => 'Victoria'
d4 = Dropzone.create :dz_name => 'Toogoolawah', :state => 'Queensland'
puts "#{ Dropzone.count } dropzones."


Event.destroy_all
e1 = Event.create :name => 'Freefly bigways', :date => '2020-11-04', :organiser => 'Jesse'
e2 = Event.create :name => '4 way scrambles', :date => '2021-01-24', :organiser => 'Melissa'
e3 = Event.create :name => 'Beginner Wingsuit', :date => '2021-08-31', :organiser => 'Jason'
e4 = Event.create :name => 'Downunder Dynamics', :date => '2021-02-02', :organiser => 'Mason'
e5 = Event.create :name => 'Canapy Course', :date => '2020-11-28', :organiser => 'Jesse'
e6 = Event.create :name => 'Advanced Angles', :date => '2021-02-02', :organiser => 'Ben'
puts "#{ Event.count } events."

Discipline.destroy_all
d1 = Discipline.create :name => 'Flat Flying'
d2 = Discipline.create :name => 'Free Flying'
d3 = Discipline.create :name => 'Canopy'
d7 = Discipline.create :name => 'Angles'
d4 = Discipline.create :name => 'Wingsuit flying'
d5 = Discipline.create :name => 'Night jumps'
d6 = Discipline.create :name => 'Boogie'
d7 = Discipline.create :name => 'Competition'
puts "#{ Discipline.count } disciplines."

puts "Events and users"
u1.events << e1 << e2
u2.events << e3 << e4 << e2

puts "Dropzones and Events"
d1.events << e5 << e5 << e6
d2.events << e3 << e4 << e2

puts "Disciplines and Events"
e1.disciplines << d2
e2.disciplines << d1
e3.disciplines << d4 << d7

d6.events << e4 << e6
