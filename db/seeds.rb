User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users created"

Resource.destroy_all
r1 = Resource.create :category => 'Maths'
r2 = Resource.create :category => 'Maths'
r3 = Resource.create :category => 'English'
r4 = Resource.create :category => 'English'
puts "#{ Resource.count } resources created"

Subject.destroy_all
s1 = Subject.create :category => 'Maths'
s2 = Subject.create :category => 'English'
puts "#{ Subject.count } Subject created"

Teacher.destroy_all
t1 = Teacher.create :name => 'Claire'
t2 = Teacher.create :name => 'Amanda'
t3 = Teacher.create :name => 'Queenie'
t4 = Teacher.create :name => 'Yianni'
puts "#{ Teacher.count } Teachers created"

Topic.destroy_all
o1 = Topic.create :topic => 'Algebra'
o2 = Topic.create :topic => 'Fractions'
o3 = Topic.create :topic => 'Geometry'
o4 = Topic.create :topic => 'Trigonometry'
o5 = Topic.create :topic => 'Primitives'
o6 = Topic.create :topic => 'Derivatives'
puts "#{ Topic.count } Topic created"

Folder.destroy_all
f1 = Folder.create :name => 'Peters Algebra'
f2 = Folder.create :name => 'John Fractions'
f3 = Folder.create :name => 'James Trigonometry'
f4 = Folder.create :name => 'Johns Derivatives'
puts "#{ Folder.count } folder created"

# Associations #################################################################
puts "Subjects and Resources"
s1.resources << r1
s2.resources << r2
s3.resources << r3
s4.resources << r4

puts "Teachers and Resources"
t1.resources << r1
t2.resources << r2
t3.resources << r3
t4.resources << r4

puts "Topics and Resources"
r1.topics << t1 << t2
r2.topics << t5
r3.topics << t3 << t4
t6.resources << r4

puts "Folders and Resources"
m1.resources << r1 << r2 << r3 << r4
m2.resources << r2 << r2 << r2 << r2
m3.resources << r2 << r4 << r2 << r4
m4.resources << r4 << r3 << r2 << r2

puts "Folders and Users"
u1.folders << f1 << f2
u2.folders << f3 << f4
