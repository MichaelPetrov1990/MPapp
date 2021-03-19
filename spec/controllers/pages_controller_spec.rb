require "rails_helper"
RSpec.describe PagesController, type: :controller do
  it "loads home_page with success" do
    get :home
    expect(response.successful?).to eq(true)
  end
  it "loads about_page with success" do
    get :about
    expect(response.successful?).to eq(true)
  end
end