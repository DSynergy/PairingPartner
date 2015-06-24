require 'test_helper'

class AsAnAuthenticatedUserICanBeMatchedUp < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test 'Notifying a user of a new match' do
    # User.create(login: 'PreciousKitten-CSS' )
    # User.create(login: "SexyManHunk-HTML")

    # Step 1 -- indicating match completion:
    #
    # As a user (User A) browsing recommendations,
    #
    # when I approve a user (User B)
    #
    # and that user has previously also approved a match with me
    #
    # then I should see a message indicating "Congrats User A, you and User B are a good match!"

  end


end
