require 'test_helper'

class AnAuthenticatedUserCanMakeMatches < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test 'From dashboard, should be able to go to "find pairs screen" ' do

# When viewing the Dashboard, I should see a shiny button inviting me to "Find Pairs". Clicking this should take me to a new screen, where I will be shown potential pairs, and invited to match with them or not.
#
# For this iteration, let's not worry about how we're recommending matches. Simply show profile information about the first other user whom I have not already been matched with.

  end

  test '# When suggesting a match, the application should display their info' do
  #
  #     User's github name
  #     User's github profile pic
  #     User's list of desired languages
  #     User's description
  end

  test "Below the other user's information, I should have 2 options" do

  #     Approve match
  #     Reject match

  end

  test 'When a user approves a match (button on the right)' do

#     Information should be stored on the server indicating that I am interested in pairing with that user.
#     That user should disappear and I should be shown another user account.
#     That user should not appear in my recommendations again.

  end

  test 'When a user rejects a match (button on the left) ' do

#     Information should be stored on the server indicating that I am NOT interested in pairing with that user.
#     That user should disappear and I should be shown another user account.
#     That user should not appear in my recommendations again.

  end

end
