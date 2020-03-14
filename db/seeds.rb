
Tutor.destroy_all
t1 = Tutor.create :name => 'Tom Hanks', :email => 'tomhanks@gmail.com', :password => 'chicken', :stage => 'Year 2', :subject => 'Maths'
t2 = Tutor.create :name => 'Rita Hanks', :email => 'ritahanks@gmail.com', :password => 'chicken', :stage => 'Year 2', :subject => 'English'
t3 = Tutor.create :name => 'Carol Hanks', :email => 'carolhanks@gmail.com', :password => 'chicken', :stage => 'Year 2', :subject => 'Maths'

puts "#{ Tutor.count } tutors created"


Program.destroy_all
p1 = Program.create :stage => 'Year 2', :subject => 'Maths'
p2 = Program.create :stage => 'Year 2', :subject => 'English'
puts "#{ Program.count } programs created"


Student.destroy_all
s1 = Student.create :name => 'Elizabeth Hanks', :image => 'https://i.pinimg.com/originals/e8/a3/65/e8a365a60c2b334b91354bcd8c98e484.jpg', :age => '8', :stage => 'Year 2'
s2 = Student.create :name => 'Olivia Hanks', :image => 'https://i.pinimg.com/236x/92/e7/ed/92e7ed115a38faa54758a5f2d4ef15bb--beautiful-little-girls-pretty-girls.jpg', :age => '7', :stage => 'Year 2'
puts "#{ Student.count } students created"

Result.destroy_all
r1 = Result.create :outcome => 'Year 2', :completion => 'True'
r1 = Result.create :outcome => 'Year 2', :completion => 'False'
puts "#{ Result.count } results created"