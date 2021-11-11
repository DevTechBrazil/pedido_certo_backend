require "rails_helper"

RSpec.describe CustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customers").to route_to("customers#index")
    end
<<<<<<< HEAD

    it "routes to #create" do
      expect(post: "/customers").to route_to("customers#create")
    end

=======
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28
  end
end
