
Tutor.destroy_all
t1 = Tutor.create :name => 'Tom Hanks', :stage => 'Year 2', :subject => 'Maths', :email => 'tomhanks@gmail.com', :password => 'chicken', :admin => true 
t2 = Tutor.create :name => 'Rita Hanks', :stage => 'Year 2', :subject => 'English', :email => 'ritahanks@gmail.com', :password => 'chicken'
t3 = Tutor.create :name => 'Carol Hanks', :stage => 'Year 1', :subject => 'Maths', :email => 'carolhanks@gmail.com', :password => 'chicken'

puts "#{ Tutor.count } tutors created"

Student.destroy_all
s1 = Student.create :name => 'Elizabeth Hanks', :image => 'https://i.pinimg.com/originals/e8/a3/65/e8a365a60c2b334b91354bcd8c98e484.jpg', :age => '5', :stage => 'Year 1'
s2 = Student.create :name => 'Olivia Hanks', :image => 'https://i.pinimg.com/236x/92/e7/ed/92e7ed115a38faa54758a5f2d4ef15bb--beautiful-little-girls-pretty-girls.jpg', :age => '7', :stage => 'Year 2'
s3 = Student.create :name => 'Jasper Hanks', :image => 'https://thumbs.dreamstime.com/t/reading-book-little-child-lying-down-floor-25845149.jpg', :age => '7', :stage => 'Year 2'
s4 = Student.create :name => 'Anthony Hanks', :image => 'https://ak7.picdn.net/shutterstock/videos/4582967/thumb/1.jpg', :age => '6', :stage => 'Year 2'
s5 = Student.create :name => 'Abby Hanks', :image => 'https://www.bestbrainscumming.com/images/best-brains-teaching.png', :age => '7', :stage => 'Year 2'
s6 = Student.create :name => 'Isabella Hanks', :image => 'https://www.melbournechildpsychology.com.au/wp-content/uploads/2014/01/Girl-with-books-and-magnifier.jpg', :age => '5', :stage => 'Year 1'

puts "#{ Student.count } students created"

Program.destroy_all
p1 = Program.create :subject => 'Year 1 - English', :kla => 'Speaking'
p2 = Program.create :subject => 'Year 2 - English', :kla => 'Listening'
p3 = Program.create :subject => 'Year 2 - Maths', :kla => 'Numbers'
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

puts "Results and programs"
r1.programs << p1 << p2 << p3 << p4
r2.programs << p1 << p2 << p3 << p4
r3.programs << p1 << p2 << p3 << p4
r4.programs << p1 << p2 << p3 << p4
r5.programs << p1 << p2 << p3 << p4
r6.programs << p1 << p2 << p3 << p4

puts "Students and results"
s1.results << r1
s2.results << r2

