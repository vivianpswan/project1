
Tutor.destroy_all
t1 = Tutor.create :name => 'Tom Hanks', :stage => 'Year 2', :subject => 'Maths', :email => 'tomhanks@gmail.com', :password => 'chicken', :admin => true 
t2 = Tutor.create :name => 'Rita Hanks', :stage => 'Year 2', :subject => 'English', :email => 'ritahanks@gmail.com', :password => 'chicken', :admin => true
t3 = Tutor.create :name => 'Carol Hanks', :stage => 'Year 1', :subject => 'Maths', :email => 'carolhanks@gmail.com', :password => 'chicken'
t4 = Tutor.create :name => 'Daphane Hanks', :stage => 'Year 1', :subject => 'English', :email => 'carolhanks@gmail.com', :password => 'chicken'


puts "#{ Tutor.count } tutors created"

Student.destroy_all
s1 = Student.create :name => 'Elizabeth Hanks', :image => 'https://image.shutterstock.com/image-photo/6-years-asian-girl-smile-260nw-448403773.jpg', :age => '5', :stage => 'Year 1'
s2 = Student.create :name => 'Olivia Hanks', :image => 'https://image.shutterstock.com/image-photo/portrait-cute-7-years-old-260nw-1101299165.jpg', :age => '7', :stage => 'Year 2'
s3 = Student.create :name => 'Jasper Hanks', :image => 'https://image.shutterstock.com/image-photo/smiling-boy-six-years-old-260nw-455866204.jpg', :age => '7', :stage => 'Year 3'
s4 = Student.create :name => 'Anthony Hanks', :image => 'https://image.shutterstock.com/image-photo/cute-seven-year-old-filipino-260nw-311421431.jpg', :age => '6', :stage => 'Year 4'
s5 = Student.create :name => 'Abby Hanks', :image => 'https://image.shutterstock.com/image-photo/portrait-cute-7-years-old-260nw-1101612335.jpg', :age => '7', :stage => 'Year 2'
s6 = Student.create :name => 'Isabella Hanks', :image => 'https://image.shutterstock.com/image-photo/outdoor-portrait-cute-little-89-260nw-506899096.jpg', :age => '5', :stage => 'Year 1'

puts "#{ Student.count } students created"

Program.destroy_all
p1 = Program.create :subject => 'Year 1 - English', :kla => 'Speaking'
p2 = Program.create :subject => 'Year 2 - English', :kla => 'Listening'
p3 = Program.create :subject => 'Year 1 - Maths', :kla => 'Numbers'
p4 = Program.create :subject => 'Year 2 - Maths', :kla => 'Counting'

puts "#{ Program.count } programs created"

Result.destroy_all
r1 = Result.create :outcome => 'Year 1', :completion => 'True'
r2 = Result.create :outcome => 'Year 2', :completion => 'True'
r3 = Result.create :outcome => 'Year 3', :completion => 'True'
r4 = Result.create :outcome => 'Year 4', :completion => 'True'
r5 = Result.create :outcome => 'Year 5', :completion => 'True'
r6 = Result.create :outcome => 'Year 6', :completion => 'True'

puts "#{ Result.count } results created"

# Associations #################################################################
puts "Tutors and students"
t1.students << s2 << s3
t2.students << s4 << s5
t3.students << s1 << s6
t4.students << s1 << s6

puts "Results and programs"
r1.programs << p1 
r2.programs << p4 
r3.programs << p1 << p2 << p3 << p4
r4.programs << p1 << p2 << p3 << p4
r5.programs << p1 << p2 << p3 << p4
r6.programs << p1 << p2 << p3 << p4

puts "Students and results"
s1.results << r1
s2.results << r2
s3.results << r3
s4.results << r4


