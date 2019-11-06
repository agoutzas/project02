User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :teacher => true
u2 = User.create :email => 'sia@ga.co', :password => 'chicken', :teacher => true
u3 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
u4 = User.create :email => 'liz@ga.co', :password => 'chicken'
puts "#{ User.count } users created"

Resource.destroy_all
r1 = Resource.create :title => 'Maths Sheet'
r2 = Resource.create :title => 'English Essay'
r3 = Resource.create :title => 'Maths Puzzle'
r4 = Resource.create :title => 'English Poem'
puts "#{ Resource.count } resources created"

Subject.destroy_all
s1 = Subject.create :name => 'Maths'
s2 = Subject.create :name => 'English'
puts "#{ Subject.count } Subject created"

# Teacher.destroy_all
# t1 = Teacher.create :name => 'Claire'
# t2 = Teacher.create :name => 'Amanda'
# t3 = Teacher.create :name => 'Queenie'
# t4 = Teacher.create :name => 'Yianni'
# puts "#{ Teacher.count } Teachers created"

Topic.destroy_all
o1 = Topic.create :name => 'Algebra'
o2 = Topic.create :name => 'Fractions'
o3 = Topic.create :name => 'Geometry'
o4 = Topic.create :name => 'Trigonometry'
o5 = Topic.create :name => 'Primitives'
o6 = Topic.create :name => 'Derivatives'
o7 = Topic.create :name => 'Othello'
o8 = Topic.create :name => 'Robert Frost'
puts "#{ Topic.count } Topic created"

Folder.destroy_all
f1 = Folder.create :name => 'Craigsy Algebra'
f2 = Folder.create :name => 'Craigsy Fractions'
f3 = Folder.create :name => 'Lizzys Poems'
f4 = Folder.create :name => 'Lizzys Misc'
puts "#{ Folder.count } folder created"

# Associations #################################################################
puts "Subjects and Resources"
s1.resources << r1
s1.resources << r3
s2.resources << r2
s2.resources << r4


# puts "Teachers and Resources"
# t1.resources << r1
# t2.resources << r2
# t3.resources << r3
# t4.resources << r4

puts "Topics and Resources"
r1.topics << o1
r2.topics << o7
r3.topics << o4 << o4
r4.topics << o8

puts "Folders and Resources"
f1.resources << r1 << r3
f2.resources << r3
f3.resources << r4
f4.resources << r4 << r3 << r2 << r1

puts "Folders and Users"
u3.folders << f1 << f2
u4.folders << f3 << f4
