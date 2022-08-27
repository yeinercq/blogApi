# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  auth_token :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "validate presence of riquired fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:email)
      should validate_presence_of(:auth_token)
    end

    it "validate relationships" do
      should have_many(:posts)
    end
  end
end
