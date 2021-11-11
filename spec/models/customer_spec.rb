require 'rails_helper'

RSpec.describe Customer, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"
=======
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:email) }
  end
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28
end
