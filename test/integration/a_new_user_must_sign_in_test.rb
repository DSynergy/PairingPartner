require 'test_helper'

class ANewUserMustSignInTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  OmniAuth.config.test_mode = true

# Iteration 1: Account Creation / Sign In
  def create_user
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
                                                                  "provider" => "github",
                                                                  "uid"      => "666",
                                                                  "credentials" => {
                                                                    "token" => "123123"},
                                                                  "info" => {
                                                                    "nickname" => "The Bease",
                                                                    "name" =>  "WilliamShatner",
                                                                    "email" => "LOLCATZ@io.com",
                                                                  },
                                                                  "extra" => {
                                                                    "avatar_url" => "123",
                                                                    "html_url" => "12312",
                                                                    "hireable" => "false",
                                                                    "followers" => "1",
                                                                    "following" => "1",
                                                                  },
                                                                })
  end

  test 'As a new user, when I first access the site, I should be prompted to log in with GitHub' do
    visit '/'
    assert page.has_content?("Begin your sojourn with Github")
  end

  test 'The first time I do this (initial account creation), I should be taken to a second "User Information" screen, and prompted to enter the following information:' do
    visit '/'
    create_user
    click_link_or_button "Begin your sojourn with Github"
    assert page.has_content?("Description")
  end

  test 'After submitting this information, I should be taken to the application root, which should display a "Dashboard" / "Matches" Screen. For the moment this will be empty.' do
    visit '/'
    create_user
    click_link_or_button "Begin your sojourn with Github"
    assert page.has_content?("Description")
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    assert page.has_content?("Hello WilliamShatner")
  end

end
