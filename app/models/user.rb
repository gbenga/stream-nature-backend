class User < ApplicationRecord
    has_many :events
    has_many :locations, through: :events
   
    # Auth
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
