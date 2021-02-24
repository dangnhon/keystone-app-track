class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :task
      t.boolean :completed, default: false 
      t.integer :priority, default: 0 
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
