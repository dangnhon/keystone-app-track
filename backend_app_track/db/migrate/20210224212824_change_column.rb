class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :salary, :string
  end
end
