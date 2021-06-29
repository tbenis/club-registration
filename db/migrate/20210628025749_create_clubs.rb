class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.datetime :date_founded

      t.timestamps
    end
  end
end