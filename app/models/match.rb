class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :matchee, class_name: "User"

  enum status: %w(potential rejected pending matched)

  scope :rejected, -> { where(status: 1) }
  scope :pending, -> { where(status: 2) }
  scope :matched, -> { where(status: 3) }

  def self.new_matches(matcher)
    potential_matches = []
    pending_matches = []
    pending_matches << Match.where(status: "pending").where(user_id: !matcher.id)
    potential_matches << Match.where(status: "potential").where(user_id: matcher.id).shuffle
    pending_matches.flatten + potential_matches.flatten
  end

end
