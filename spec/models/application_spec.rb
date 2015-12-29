require 'rails_helper'

RSpec.describe Application, type: :model do
  it { should belong_to :user }
  it { should validate_presence_of(:name).with_message(/can't be blank!/) }
  it { should validate_uniqueness_of(:name).scoped_to(:user_id).with_message("is already in use (by you!)") }
  it { should validate_presence_of(:url).with_message(/can't be blank!/) }
  it { should validate_uniqueness_of(:url).with_message(/already belongs to another application/) }
end
