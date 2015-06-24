require 'test_helper'

class AnAuthenticatedUserHasBetterMatchSelectionsTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  #Iteration 3: Better Match Suggestion

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
      Match.create(user_id: 1, matchee_id: 2)
      Match.create(user_id: 1, matchee_id: 3)
    end

    def create_second_user
      OmniAuth.config.mock_auth[:github1] = OmniAuth::AuthHash.new({
                                                                    "provider" => "github",
                                                                    "uid"      => "6661",
                                                                    "credentials" => {
                                                                      "token" => "1231231"},
                                                                    "info" => {
                                                                      "nickname" => "The Bease1",
                                                                      "name" =>  "WilliamShatner1",
                                                                      "email" => "LOLCATZ@io.com1",
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

    end


  test 'If there are any "pending" matches from other users to me, then I should be shown those users first, followed by other users where no match information exists (as in iteration 2).' do
    skip
    create_users_and_sign_in
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    save_and_open_page
    click_link_or_button "Hot"
    create_second_user
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    assert page.has_content?("WilliamShatner")
  end

  test 'Otherwise, I should be shown new user accounts in order, just as in iteration 2.' do
    skip
    create_users_and_sign_in
    visit '/'
    click_link_or_button "Begin your sojourn with Github"
    fill_in "Description", with: "shrug"
    click_link_or_button "Update yourself. Improve yourself"
    click_link_or_button "Find Your Perfect Pair Pooky"
    click_link_or_button "Hot"
    assert page.has_content?("sexykitten123")

  end

end
