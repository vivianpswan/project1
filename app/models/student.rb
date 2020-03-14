class Student < ApplicationRecord
    has_and_belongs_to_many :tutors
    has_many :results
    has_many :programs, :through => :results
end
