class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :job_title
      t.string :date
      t.integer :salary
      t.string :status
      t.text :note
      t.string :contact_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
