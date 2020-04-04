
Tutor.destroy_all
t1 = Tutor.create :name => 'Tom Hanks', :stage => 'Year 2', :subject => 'Maths', :email => 'tomhanks@gmail.com', :password => 'chicken', :admin => true 
t2 = Tutor.create :name => 'Rita Hanks', :stage => 'Year 2', :subject => 'English', :email => 'ritahanks@gmail.com', :password => 'chicken', :admin => true
t3 = Tutor.create :name => 'Carol Hanks', :stage => 'Year 1', :subject => 'Maths', :email => 'carolhanks@gmail.com', :password => 'chicken'
t4 = Tutor.create :name => 'Daphane Hanks', :stage => 'Year 1', :subject => 'English', :email => 'daphanehanks@gmail.com', :password => 'chicken'


puts "#{ Tutor.count } tutors created"

Student.destroy_all
s1 = Student.create :name => 'Elizabeth Hanks', :image => 'https://image.shutterstock.com/image-photo/6-years-asian-girl-smile-260nw-448403773.jpg', :age => '5', :stage => 'STAGE 1 (YEARS 1–2)'
s2 = Student.create :name => 'Olivia Hanks', :image => 'https://image.shutterstock.com/image-photo/portrait-cute-7-years-old-260nw-1101299165.jpg', :age => '7', :stage => 'STAGE 1 (YEARS 1–2)'
s3 = Student.create :name => 'Jasper Hanks', :image => 'https://image.shutterstock.com/image-photo/smiling-boy-six-years-old-260nw-455866204.jpg', :age => '7', :stage => 'STAGE 1 (YEARS 1–2)'
s4 = Student.create :name => 'Anthony Hanks', :image => 'https://image.shutterstock.com/image-photo/cute-seven-year-old-filipino-260nw-311421431.jpg', :age => '6', :stage => 'STAGE 1 (YEARS 1–2)'
s5 = Student.create :name => 'Abby Hanks', :image => 'https://image.shutterstock.com/image-photo/portrait-cute-7-years-old-260nw-1101612335.jpg', :age => '7', :stage => 'STAGE 1 (YEARS 1–2)'
s6 = Student.create :name => 'Isabella Hanks', :image => 'https://image.shutterstock.com/image-photo/outdoor-portrait-cute-little-89-260nw-506899096.jpg', :age => '5', :stage => 'STAGE 1 (YEARS 1–2)'

puts "#{ Student.count } students created"

Program.destroy_all

p1 = Program.create :subject => 'STAGE 1 (YEARS 1–2) - English', :kla => 'Speaking, Listening, Writing, Spelling'
p2 = Program.create :subject => 'STAGE 1 (YEARS 1–2) - Mathematics', :kla => 'Counting, Addition, Subtraction, Muliplication, Division'

puts "#{ Program.count } programs created"

Result.destroy_all
r1 = Result.create :outcome => 'STAGE 1 (YEARS 1–2) - English', :completion => 'True'
r2 = Result.create :outcome => 'STAGE 1 (YEARS 1–2) - Mathemtics', :completion => 'True'

puts "#{ Result.count } results created"

Article.destroy_all
a1 = Article.create :title => 'How Parramatta students plan to learn from home', :text => 'Learning from home, much like the classroom, will require different approaches for different learners.'
a2 = Article.create :title => 'Prime Minister announces schools will stay open', :text => 'The Prime Minister and the Chief Medical Officer have announced that Australian schools will remain open based on health advice.'
a3 = Article.create :title => 'Health and hygiene advice to schools', :text => 'The department has provided advice to schools on health and hygiene practices in schools to limit the spread of germs, including viruses, in our school communities.'
a4 = Article.create :title => 'A frontline look at social distancing in schools', :text => 'Today I visited Leichhardt Public School to see firsthand how our staff and students are coping with the new social distancing measures to control the COVID-19 virus.'
a5 = Article.create :title => 'Health advice on school closures', :text => 'The World Health Organisation has declared COVID-19 a pandemic and the situation continues to evolve quickly with an increasing number of countries having sustained community transmission.'

puts "#{ Article.count } articles created"

# Associations #################################################################

puts "Tutors and students"
t1.students << s2 << s3
t2.students << s4 << s5
t3.students << s1 << s6
t4.students << s1 << s6

puts "Results and programs"
r1.programs << p1
r2.programs << p2

puts "Students and results"
s1.results << r1
s2.results << r1
s3.results << r1
s4.results << r2
s5.results << r2
s6.results << r2

puts "Students and programs"
s1.programs << p1 << p2
s2.programs << p1 << p2
s3.programs << p1
s4.programs << p2
s5.programs << p2
s6.programs << p2




