require "rails_helper"

RSpec.describe Questionnaire, type: :model do

  context "basic validations" do
    it "is invalid without a valid user" do
      questionnaire = Questionnaire.new()
      expect(questionnaire.save).to  eq false
    end

    it "is valid with a valid user present" do
    end

  end
end