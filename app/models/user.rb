class User < ApplicationRecord
        has_many :tutors
        has_secure_password
       
        # backend validation for emails to be present and unique
        validates :email, :presence => true, :uniqueness => true
      end
      
end
