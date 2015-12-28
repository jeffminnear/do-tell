class AddIndexToApplicationsUrl < ActiveRecord::Migration
  def change
    add_index(:applications, :url, unique: true)
  end
end
