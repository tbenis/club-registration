class Club < ApplicationRecord
  belongs_to :user #person who created it
  has_many :club_users, :dependent => :destroy

  has_one_attached :logo
  has_many :users, through: :club_users, :dependent => :destroy #Those who joined
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :date_founded, presence: true
  validates :summary, presence: true
  validate :date_founded_cannot_be_in_the_future
  validates :description, length: { minimum: 10 }

  def date_founded_cannot_be_in_the_future
    if date_founded.present? && date_founded > Date.today
      errors.add(:date_founded, "Cannot be in the future")
    end
  end
end
