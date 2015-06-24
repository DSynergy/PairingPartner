class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :matchee, class_name: "User"

  enum status: %w(potential rejected pending matched)

  scope :rejected, -> { where(status: 1) }
  scope :pending, -> { where(status: 2) }
  scope :matched, -> { where(status: 3) }

  def self.new_matches(matcher)
    potential_matches = []
    User.all.each do |user|
      require 'pry';binding.pry
      potential_matches << user.matchees.pluck(status: :potential && matcher.id != user.id)
    end
    User.all.each do |user|
      pending_matches << user.matchees.pluck(status: :pending).shuffle
    end
    potential_matches + pending_matches
  end

end
