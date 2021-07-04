class AddReadonToClubUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :club_users, :reason, :string
  end
end
