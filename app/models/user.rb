class User < ApplicationRecord
    has_secure_password
    has_many :club_users
    
    # has_many :clubs, through: :club_users
    has_many :club_memberships, through: :club_users, source: :club #Clubs they joined
    has_many :clubs #clubs they created
    

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

  def self.create_by_google_omniauth(auth)
    self.find_or_create_by(email: auth[:info][:email]) do |u|
      u.name = auth["info"]["name"]
      u.password = SecureRandom.hex
    end
  end
end
