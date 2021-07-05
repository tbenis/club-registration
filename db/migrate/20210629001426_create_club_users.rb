class CreateClubUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :club_users do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :club,  foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
