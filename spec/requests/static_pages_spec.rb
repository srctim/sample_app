require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title("| Home")
    end

  end

  describe "Help page" do
    it "should have the content 'Help page'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the base title" do
      visit help_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit help_path
      expect(page).not_to have_title("| Help")
    end

  end

  describe "About page" do
    it "should have the content 'About page'" do
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the base title" do
      visit about_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom title" do
      visit about_path
      expect(page).not_to have_title("| About")
    end

  end

  describe "Contact page" do
    it "should have the content 'Contact page'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the base title" do
      visit contact_path
      expect(page).to have_title("#{base_title}")
    end

    it "should have the base title" do
      visit contact_path
      expect(page).not_to have_title("| Contact")
    end

  end

end