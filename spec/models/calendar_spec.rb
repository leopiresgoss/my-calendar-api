require 'rails_helper'

RSpec.describe Calendar, type: :model do
  subject(:calendar) do
    user = User.create(email: 'test_user@example.com', password: 'password')
    Calendar.new(name: 'test_calendar', user:)
  end

  before { calendar.save }

  describe 'validations' do
    it 'does not validate without a user' do
      calendar.user = nil
      expect(calendar).to_not be_valid
    end

    it 'should not validate without a name' do
      calendar.name = nil
      expect(calendar).to_not be_valid
    end

    it 'should validate with valid params' do
      expect(calendar).to be_valid
    end
  end
end
