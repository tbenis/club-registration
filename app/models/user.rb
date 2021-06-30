class User < ApplicationRecord
    has_secure_password
    has_many :club_users
    
    # has_many :clubs, through: :club_users
    has_many :club_memberships, through: :club_users, source: :club #Clubs they joined
    has_many :clubs #clubs they created
    

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
