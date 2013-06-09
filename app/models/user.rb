class User < ActiveRecord::Base
  attr_accessible :email, :github_uid, :name

  def self.create_from_omniauth(omniauth)
    User.new.tap do |user|
      user.github_uid = omniauth["uid"]
      user.name = omniauth["info"]["nickname"]
      user.email = omniauth["info"]["email"]
      user.save!
    end
  end
end
