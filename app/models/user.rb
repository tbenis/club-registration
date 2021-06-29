class User < ApplicationRecord
    has_many :club_users
    
    has_many :clubs, through: :club_users
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
