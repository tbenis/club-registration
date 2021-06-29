class Club < ApplicationRecord
    has_many :club_users

    has_many :users, through: :club_users
    validates :name,  presence: true, uniqueness: true, length: {minimum: 3}
    #validates :date_founded, presence: true
    validates :description, length: {minimum: 10}
end
