require 'test_helper'

class ANewUserMustSignInTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

# Iteration 1: Account Creation / Sign In

  test 'As a new user, when I first access the site, I should be prompted to log in with GitHub' do
    visit '/'
    assert page.has_content?("Github")
    clink_link_or_button "Begin your sojourn with Github"
    
  end

  test 'The first time I do this (initial account creation), I should be taken to a second "User Information" screen, and prompted to enter the following information:' do
#    Preferred languages -- List of Checkboxes (check all that you're interested in). see below for a sample list
#    About Me -- Text Box -- Enter a short description, maximum 500 characters. For this information, prompt users to describe what they're looking for in a pair, their coding interests, etc.

  end

  test 'After submitting this information, I should be taken to the application root, which should display a "Dashboard" / "Matches" Screen. For the moment this will be empty.' do
# After submitting this information, I should be taken to the application root, which should display a "Dashboard" / "Matches" Screen. For the moment this will be empty.

  end

end
