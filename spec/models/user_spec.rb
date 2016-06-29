require 'rails_helper'

RSpec.describe User, type: :model do
  it "will return false if first_name is blank" do
  	user = User.create(first_name: nil, last_name: "Hakim", email: "test.mail@mailinator.com")
  	expect(user.valid?).to eq(false)
	end

	it "will return true if first_name is present" do
  	user = User.create(first_name: "Burhan", last_name: "Hakim", email: "test.mail@mailinator.com")
  	expect(user.valid?).to eq(true)
	end
end
