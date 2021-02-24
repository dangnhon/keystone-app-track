class CreateMeetupContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :meetup_contacts do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.references :meetup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
