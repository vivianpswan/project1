class Student < ApplicationRecord
    has_many :results
    has_many :programs, :through => :results
end
