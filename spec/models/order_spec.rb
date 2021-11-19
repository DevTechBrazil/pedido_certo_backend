require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:registration)}
    it { should validate_presence_of(:delivery)}
    it { should validate_presence_of(:amount)}
    it { should validate_presence_of(:last_payment)}
  end
end
