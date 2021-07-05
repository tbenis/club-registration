class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :summary
      t.text :description
      t.datetime :date_founded
      t.belongs_to :user,  foreign_key: true

      t.timestamps
    end
  end
end