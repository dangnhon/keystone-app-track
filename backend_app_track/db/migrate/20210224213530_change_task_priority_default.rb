class ChangeTaskPriorityDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :priority, :integer, :default => 1
  end
end
