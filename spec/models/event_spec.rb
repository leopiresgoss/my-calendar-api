require 'rails_helper'

RSpec.describe Event, type: :model do
  subject(:event) do
    user = User.create(email: 'test_user@example.com', password: 'password')
    calendar = Calendar.create(name: 'test_calendar', user:)
    Event.new(task: 'test_event', calendar:, date: Date.today)
  end

  before { event.save }

  describe 'validations' do
    it 'does not validate without a task' do
      event.task = nil
      expect(event).to_not be_valid
    end

    it 'should not validate without a date' do
      event.date = nil
      expect(event).to_not be_valid
    end

    it 'should not validate without a calendar' do
      event.calendar = nil
      expect(event).to_not be_valid
    end

    it 'should be validated' do
      expect(event).to be_valid
    end
  end
end
