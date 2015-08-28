require 'spec_helper'
describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end

  # describe "register user" do
  #   visit signup_path
  #   fill_in "Name",         with: "Example User"
  #   fill_in "Email",        with: "user@example.com"
  #   fill_in "Password",     with: "foobar"
  #   fill_in "Confirmation", with: "foobar"
  #   click_button "Create my account"
  # end
end
