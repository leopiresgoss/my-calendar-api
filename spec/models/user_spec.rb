require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: 'test_user@example.com', password: 'password') }

  before { user.save }

  describe 'validations' do
    it 'does not validate without a name' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'should validate with a valid email and password' do
      expect(user).to be_valid
    end
  end
end
