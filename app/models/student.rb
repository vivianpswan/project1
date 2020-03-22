class Student < ApplicationRecord
    has_and_belongs_to_many :tutors
    has_and_belongs_to_many :programs    
    has_and_belongs_to_many :results


end
