require 'rails_helper'

describe "Static pages" do
  subject {page}
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before {visit root_path}

    it "should have the content 'Sample App'" do
       have_content('Sample App')
    end

    it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
    before {visit help_path}

    it "should have the content 'Help page'" do
      expect(page).to have_content('Help')
    end

    it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title("| Help")
    end
  end

  describe "About page" do
    before {visit about_path}

    it "should have the content 'About page'" do
      expect(page).to have_content('About')
    end

    it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom title" do
      expect(page).not_to have_title("| About")
    end
  end

  describe "Contact page" do
    before {visit contact_path}

    it "should have the content 'Contact page'" do
      expect(page).to have_content('Contact')
    end

    it "should have the base title" do
      expect(page).to have_title("#{base_title}")
    end

    it "should have the base title" do
      expect(page).not_to have_title("| Contact")
    end
  end
end