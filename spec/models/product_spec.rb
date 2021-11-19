require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:product_type)}
    it { should validate_presence_of(:cost)}
    it { should validate_presence_of(:sale_value)}
  end
end
