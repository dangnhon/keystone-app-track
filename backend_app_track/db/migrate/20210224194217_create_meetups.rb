class CreateMeetups < ActiveRecord::Migration[6.1]
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :location
      t.string :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
