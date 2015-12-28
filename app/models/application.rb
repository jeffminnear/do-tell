class Application < ActiveRecord::Base
  belongs_to :user
  has_many :events

  validates_presence_of :name, message: "can't be blank!"
  validates_uniqueness_of :name, scope: :user_id, message: "is already in use (by you!)"
  validates_presence_of :url, message: "can't be blank!"
  validates_uniqueness_of :url, message: "already belongs to another application"
end
