require 'test_helper'

class AsAnAuthenticatedUserICanSeeMatchesOnMyDashboard< ActionDispatch::IntegrationTest
  include Capybara::DSL

  test 'A completed match notifies you and shows up on your dashboard' do

  # Step 2 -- recording completed matches:
  #
  # As a user (User A) browsing recommendations,
  #
  # when I approve a user (User B)
  #
  # and that user has previously also approved a match with me
  #
  # and I navigate to my Dashboard, I should see a list of completed matches, indicating that I (User A) was matched with (User B).

  end

end
