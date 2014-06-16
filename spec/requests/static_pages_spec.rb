require 'spec_helper'

describe "StaticPages" do
  let(:title_prefix) { 'Ruby on Rails Tutorial Microposts |' }

  describe "Home Page" do
    it "should have the content 'Microposts'" do
      visit '/static_pages/home'
      expect(page).to have_content('Microposts')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Microposts")
    end

    it "should not have the home title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{title_prefix} Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{title_prefix} About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it 'should have the right title' do
      visit '/static_pages/contact'
      expect(page).to have_title("#{title_prefix} Contact")
    end
  end
end
