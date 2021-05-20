require 'rails_helper'

RSpec.describe ThingsToMeasure, type: :model do
  it 'Validate ThingsToMeasure' do
    user1 = User.new(name: 'eric', email: 'eric@gmail.com', password: 'eric@passoerd')

    tt_measure = ThingsToMeasure.new(name: 'speed', user_id: user1.id, maxValue: '45', unit: 'KM/S')
    expect(tt_measure.valid?).to be(false)
  end

  describe 'ActiveRecord associations' do
    it { should belong_to(:user) }
  end
end
