require 'test_helper'

class AnAuthenticatedUserCanMakeMatches < ActionDispatch::IntegrationTest
  include Capybara::DSL

#
# When viewing the Dashboard, I should see a shiny button inviting me to "Find Pairs". Clicking this should take me to a new screen, where I will be shown potential pairs, and invited to match with them or not.
#
# For this iteration, let's not worry about how we're recommending matches. Simply show profile information about the first other user whom I have not already been matched with.
#
# When suggesting a match, the application should display:
#
#     User's github name
#     User's github profile pic
#     User's list of desired languages
#     User's description
#
# Below the other user's information, I should have 2 options:
#
#     Approve match
#     Reject match
#
# If I Approve a match (button on the right):
#
#     Information should be stored on the server indicating that I am interested in pairing with that user.
#     That user should disappear and I should be shown another user account.
#     That user should not appear in my recommendations again.
#
# If I Reject a match (button on the left):
#
#     Information should be stored on the server indicating that I am NOT interested in pairing with that user.
#     That user should disappear and I should be shown another user account.
#     That user should not appear in my recommendations again.

end
