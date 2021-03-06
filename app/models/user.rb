class User < ActiveRecord::Base
  has_many :user_languages
  has_many :languages, through: :user_languages

  has_many :matches
  has_many :matchees, through: :matches

  has_many :inverse_matches, :class_name => "Match", :foreign_key => "matchee_id"
  has_many :inverse_matchees, :through => :inverse_matches, :source => :user

  validates :description, length: { maximum: 500 }

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)

    user.name       = data.info.name
    user.nickname   = data.info.nickname
    user.avatar_url = data.extra.raw_info.avatar_url
    user.html_url   = data.extra.raw_info.html_url
    user.hireable   = data.extra.raw_info.hireable
    user.followers  = data.extra.raw_info.followers
    user.following  = data.extra.raw_info.following
    user.email      = data.info.email
    user.token      = data.credentials.token
    user.raw_data   = data
    user.save
    user

  end

end
