require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Microposts'" do
      visit '/static_pages/home'
      expect(page).to have_content('Microposts')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
end
