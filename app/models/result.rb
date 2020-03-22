class Result < ApplicationRecord
    has_and_belongs_to_many :programs
    has_and_belongs_to_many :students
end
