class Club < ApplicationRecord
    belongs_to :user #person who created it
    has_many :club_users

  def date_founded_cannot_be_in_the_future
    if date_founded.present? && date_founded > Date.today
      errors.add(:date_founded, "Cannot be in the future")
    end
  end
end
