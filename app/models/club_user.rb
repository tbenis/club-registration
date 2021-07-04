class ClubUser < ApplicationRecord
  belongs_to :user
  belongs_to :club

  validates :reason, presence: true
  validate :already_a_member
  
  def already_a_member
    if self.new_record? && @club_user = ClubUser.find_by(user_id: user_id, club_id: club_id)
      errors.add(:user_id, "#{@club_user.user.name} is already a member")
    end
  end
end
