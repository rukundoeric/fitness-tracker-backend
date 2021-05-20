require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates name, email and passoword' do
    user1 = User.new(name: nil, email: nil)
    user2 = User.new(name: 'eric', email: 'eric@gmail.com', password: 'eric@passoerd')
    expect(user1.valid?).to be(false)
    expect(user2.valid?).to be(true)
  end

  describe 'ActiveRecord associations' do
    it { should have_many(:measurements) }
    it { should have_many(:things_to_measures) }
  end
end
