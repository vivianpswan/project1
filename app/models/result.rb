class Result < ApplicationRecord
    has_and_belongs_to_many :programs
    belongs_to :students
end
