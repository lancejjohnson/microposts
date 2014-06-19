require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_content('Microposts') }
    it { should have_title(full_title('')) }
      expect(page).to have_title("Ruby on Rails Tutorial Microposts")
    end

    it { should_not have_title(full_title('| Home')) }
  end

  describe "Help Page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title('About Us') }
      expect(page).to have_title("#{title_prefix} About")
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title('Contact') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "Microposts"
    expect(page).to have_title(full_title('Home'))
  end
end
