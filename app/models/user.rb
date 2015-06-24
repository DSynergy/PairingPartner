class User < ActiveRecord::Base
  has_many :user_languages
  has_many :languages, through: :user_languages

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(uid: data.uid)

    user.name       = data.info.name
    user.nickname   = data.info.nickname
    user.avatar_url = data.extra.avatar_url
    user.html_url   = data.extra.html_url
    user.hireable   = data.extra.hireable
    user.followers  = data.extra.followers
    user.following  = data.extra.following
    user.email      = data.info.email
    user.token      = data.credentials.token

    user.save
    user

  end

end
