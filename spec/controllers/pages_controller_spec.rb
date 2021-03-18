require "rails_helper"
RSpec.describe PagesController, type: :controller do
  it "responds successfuly" do
    get :home
    expect(response.successful?).to eq(true)
  end
  it "responds successfuly" do
    get :about
    expect(response.successful?).to eq(true)
  end
end