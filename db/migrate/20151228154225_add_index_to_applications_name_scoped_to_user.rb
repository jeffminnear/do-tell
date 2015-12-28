class AddIndexToApplicationsNameScopedToUser < ActiveRecord::Migration
  def change
    add_index(:applications, [:name, :user_id], unique: true)
  end
end
