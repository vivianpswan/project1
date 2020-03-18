
Tutor.destroy_all
t1 = Tutor.create :name => 'Tom Hanks', :stage => 'Year 2', :subject => 'Maths', :email => 'tomhanks@gmail.com', :password => 'chicken', :admin => true 
t2 = Tutor.create :name => 'Rita Hanks', :stage => 'Year 2', :subject => 'English', :email => 'ritahanks@gmail.com', :password => 'chicken'
t3 = Tutor.create :name => 'Carol Hanks', :stage => 'Year 1', :subject => 'Maths', :email => 'carolhanks@gmail.com', :password => 'chicken'

puts "#{ Tutor.count } tutors created"


Program.destroy_all
p1 = Program.create :stage => 'Year 1', :subject => 'English'
p2 = Program.create :stage => 'Year 1', :subject => 'Maths'
p3 = Program.create :stage => 'Year 1', :subject => 'Science'
p4 = Program.create :stage => 'Year 2', :subject => 'English'
p5 = Program.create :stage => 'Year 2', :subject => 'Maths'
p6 = Program.create :stage => 'Year 2', :subject => 'Science'

puts "#{ Program.count } programs created"


Student.destroy_all
s1 = Student.create :name => 'Elizabeth Hanks', :image => 'https://i.pinimg.com/originals/e8/a3/65/e8a365a60c2b334b91354bcd8c98e484.jpg', :age => '5', :stage => 'Year 1'
s2 = Student.create :name => 'Olivia Hanks', :image => 'https://i.pinimg.com/236x/92/e7/ed/92e7ed115a38faa54758a5f2d4ef15bb--beautiful-little-girls-pretty-girls.jpg', :age => '7', :stage => 'Year 2'
s3 = Student.create :name => 'Jasper Hanks', :image => 'https://thumbs.dreamstime.com/t/reading-book-little-child-lying-down-floor-25845149.jpg', :age => '7', :stage => 'Year 2'
s4 = Student.create :name => 'Anthony Hanks', :image => 'https://ak7.picdn.net/shutterstock/videos/4582967/thumb/1.jpg', :age => '6', :stage => 'Year 2'
s5 = Student.create :name => 'Abby Hanks', :image => 'https://www.bestbrainscumming.com/images/best-brains-teaching.png', :age => '7', :stage => 'Year 2'
s6 = Student.create :name => 'Isabella Hanks', :image => 'https://www.melbournechildpsychology.com.au/wp-content/uploads/2014/01/Girl-with-books-and-magnifier.jpg', :age => '5', :stage => 'Year 1'

puts "#{ Student.count } students created"

Result.destroy_all
r1 = Result.create :outcome => 'Numbers', :completion => 'True'
r2 = Result.create :outcome => 'Counting', :completion => 'True'
r3 = Result.create :outcome => 'Adding', :completion => 'True'
r4 = Result.create :outcome => 'Subtracting', :completion => 'True'
r5 = Result.create :outcome => 'Identifying patters', :completion => 'True'
r6 = Result.create :outcome => 'Creating patterns', :completion => 'True'
r7 = Result.create :outcome => 'Speaking', :completion => 'True'
r8 = Result.create :outcome => 'Listening', :completion => 'True'
r9 = Result.create :outcome => 'Reading', :completion => 'True'
r10 = Result.create :outcome => 'Drawing', :completion => 'True'
r11 = Result.create :outcome => 'Writing', :completion => 'True'

puts "#{ Result.count } results created"

# Associations #################################################################
puts "Tutors and students"
t1.students << s2 << s3
t2.students << s4 << s5
t3.students << s1 << s6

puts "Results and programs"
r1.programs << p2 << p5
r2.programs << p2 << p5
r3.programs << p2 << p5
r4.programs << p2 << p5
r5.programs << p2 << p5
r6.programs << p2 << p5
r7.programs << p1 << p4
r8.programs << p1 << p4
r9.programs << p1 << p4
r10.programs << p1 << p4
r11.programs << p1 << p4

puts "Students and results"
s1.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
s2.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
s3.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
s4.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
s5.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
s6.results << r1 << r2 << r3 << r4 << r5 << r6 << r7 << r8 << r9 << r10 << r11
