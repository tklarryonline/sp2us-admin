require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Welcome') }
    it { should have_title(full_title('')) }

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Welcome to Space++')
    end

    it "should have the right title" do
      expect(page).to have_title("Space++ Management")
      expect(page).not_to have_title("Home")
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      expect(page).to have_title("About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit contact_path
      expect(page).to have_title("Contact")
    end
  end
end
