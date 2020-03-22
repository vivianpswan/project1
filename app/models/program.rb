class Program < ApplicationRecord
    has_and_belongs_to_many :results
    has_and_belongs_to_many :students

end
