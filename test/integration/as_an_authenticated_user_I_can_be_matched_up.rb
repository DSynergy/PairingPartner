require 'test_helper'

class AsAnAuthenticatedUserICanBeMatchedUp < ActionDispatch::IntegrationTest
  include Capybara::DSL


# So what happens when 2 users both approve a match? Well we need to...match them somehow.
#
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
