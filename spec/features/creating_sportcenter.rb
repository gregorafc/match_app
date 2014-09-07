require 'rails_helper'

include Warden::Test::Helpers
Warden.test_mode!

  describe "creating a new sportcenter" do

    scenario "creates succesfully after submitting form" do
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)
      visit("/sportcenters/new")
      fill_in 'sportcenter_name', with: "Maracana"
      fill_in 'sportcenter_adress', with: "Brasil"
      fill_in 'sportcenter_phone', with: "123456"
      click_button 'Create Sportcenter'
      expect(page).to have_content 'Nazwa ośrodka'
      logout(:user)
      Warden.test_reset!
    end

    scenario "create sportcenter with wrong phone number" do
     user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)
      visit("/sportcenters/new")
      fill_in 'sportcenter_name', with: "Maracana"
      fill_in 'sportcenter_adress', with: "Brasil"
      fill_in 'sportcenter_phone', with: "123456msjds"
      click_button 'Create Sportcenter'
      expect(page).to have_content 'is invalid'
      logout(:user)
      Warden.test_reset!
    end

  end

