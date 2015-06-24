require 'test_helper'

class AnAuthenticatedUserCanMakeMatchesTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  OmniAuth.config.test_mode = true

  def create_users
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

    user = User.create(name: "sexykitten123", description: "description")
    user.languages.create(name: "Ruby")
    user = User.create(name: "uglyplatypus321", description: "description2")
    user.languages.create(name: "C++")

  end



  test 'From dashboard, should be able to go to "find pairs screen" and when suggesting a match, the application should display their info' do
    create_users
    visit 'users/1'
    click_link_or_button "Find Your Perfect Pair Pooky"
    assert page.has_content?("sexykitten123")
    assert page.has_content?("description")
    assert page.has_content?("Ruby")
  end

  test "Below the other user's information, I should have 2 options" do
    create_users
    visit 'users/1'
    click_link_or_button "Find Your Perfect Pair Pooky"
    assert page.has_content?("Hot")
    assert page.has_content?("OrNot")
  end

  test 'When a user approves a match (button on the right)' do
    create_users
    visit 'users/1'
    click_link_or_button "Find Your Perfect Pair Pooky"
    click_link_or_button "Hot"
    assert page.has_content?(name: "uglyplatypus321" )
    assert page.has_content?(description: "description2")
    assert page.has_content?("C++")
    assert_equal "sexykitten123", current_user.matches.first
  end

  test 'When a user rejects a match (button on the left) ' do
    create_users
    visit 'users/1'
    click_link_or_button "Find Your Perfect Pair Pooky"
    click_link_or_button "Not"
    assert page.has_content?(name: "uglyplatypus321" )
    assert page.has_content?(description: "description2")
    assert page.has_content?("C++")
    assert_equal nil, current_user.matches.first

  end

end
