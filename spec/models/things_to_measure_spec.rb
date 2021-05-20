require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it 'Validate Measurement' do
    user1 = User.new(name: 'eric', email: 'eric@gmail.com', password: 'eric@passoerd')
    tt_measure = ThingsToMeasure.new(name: 'speed', maxValue: '45', unit: 'KM/S')

    measurement1 = user1.measurements.new(value: '30', things_to_measure_id: tt_measure.id)
    expect(measurement1.valid?).to be(false)
  end

  describe 'ActiveRecord associations' do
    it { should belong_to(:user) }
    it { should belong_to(:things_to_measure) }
  end
end
