require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  scenario "the user should expect to see a welcome message" do
    visit root_path
    expect(page).to have_text("Welcome to the Power of You!")
  end
end