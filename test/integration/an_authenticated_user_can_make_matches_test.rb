require 'test_helper'

class AnAuthenticatedUserCanMakeMatchesTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  OmniAuth.config.test_mode = true
  #iteration 2
  def create_users_and_sign_in
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
                                                                    "raw_info" => {
                                                                    "avatar_url" => "123",
                                                                    "html_url" => "12312",
                                                                    "hireable" => "false",
                                                                    "followers" => "1",
                                                                    "following" => "1",
                                                                  }
                                                                  },
                                                                })

    user = User.create(name: "sexykitten123", description: "description")
    user.languages.create(name: "Ruby")
    user = User.create(name: "uglyplatypus321", description: "description2")
    user.languages.create(name: "C++")
    Match.create(user_id: 1, matchee_id: 2)
    Match.create(user_id: 1, matchee_id: 3)
  end

  test 'From dashboard, should be able to go to "find pairs screen" and when suggesting a match, the application should display their info' do
    create_users_and_sign_in
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    assert page.has_content?("sexykitten123")
    assert page.has_content?("description")
    assert page.has_content?("Ruby")
  end

  test 'When a user approves a match (button on the right)' do
    create_users_and_sign_in
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    click_link_or_button "Hot"
    assert page.has_content?("Duly noted friend-o")
  end

  test 'When a user rejects a match (button on the left) ' do
    create_users_and_sign_in
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    click_link_or_button "Not"
    assert page.has_content?("Duly noted friend-o. They won't be bothering you again, I promise")
    assert_equal nil, User.first.matches.first

  end

end
