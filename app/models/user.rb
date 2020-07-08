class User < ApplicationRecord
    # Auth
    has_secure_password

    has_many :events
    has_many :locations, through: :events
   
    # validates :username, uniqueness: { case_sensitive: false }
end
