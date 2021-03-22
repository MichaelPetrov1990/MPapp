require "rails_helper"

RSpec.describe User, type: :model do

  describe "validations" do
    let(:user) {User.new email: "mpetrovcello@gmail.com", password: "hello123", first_name: "Michael", last_name: "Petrov"}

    it "is valid when email, password first_name are present" do
      expect(user.save).to eq (true)
    end

    it "is invalid without an email address" do
      user.email = nil
      expect(user.save).to eq(false)
    end

    it "is invalid without first_name" do
      user.first_name = nil
      expect {user.save}.to raise_error(ActiveRecord::NotNullViolation)      
    end
  end
end


  # michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123", first_name: "Michael", last_name: "Petrov"
