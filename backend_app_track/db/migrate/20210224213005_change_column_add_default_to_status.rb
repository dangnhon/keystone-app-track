class ChangeColumnAddDefaultToStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :status, :boolean, :default => false
  end
end
