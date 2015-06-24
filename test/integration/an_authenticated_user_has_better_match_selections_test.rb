require 'test_helper'

class AnAuthenticatedUserHasBetterMatchSelectionsTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test 'Show pending matches first in queue' do

# Iteration 3: Better Match Suggestion
#
# Our current setup is getting somewhere, but a match isn't that useful until both users have approved it. Let's improve our match recommendation algorithm to help facilitate this.
#
# When generating potential matches:
#
# If there are any "pending" matches from other users to me, then I should be shown those users first, followed by other users where no match information exists (as in iteration 2).
#
# Otherwise, I should be shown new user accounts in order, just as in iteration 2.
#
# In other words, users who have always Accepted a match with me should be moved to the front of my recommendation "queue".
#
# To help illustrate this, let's run through an example scenario:
#
#     User A logs in and is shown User B's account
#     User A approves the recommendation of User B
#     User A is then shown User C/D/E...'s accounts
#     User B logs in and is shown User A's account first, since there is a pending match between these 2, to which User B has not yet responded.
#     User B responds to the match by approving/rejecting
#     User B is then shown remaining User accounts C/D/E etc
#
# Note that there is no difference in the Interface between an initial ("blind") recommendation and a pending match (One where the other party has already clicked, "Approve"). This information is (so far) not visible to the user.
#
# Also Note that so far we don't need to do anything with the match information we are collecting. For now just focus on getting the recommendation-display portion wired up.

  end

end
