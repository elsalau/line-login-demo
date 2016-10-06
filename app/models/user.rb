class User < ActiveRecord::Base

  class << self
    def from_omniauth(auth_hash)
      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
      user.username = auth_hash['info']['name']
      user.image_url = auth_hash['info']['image']
      user.status_msg = auth_hash['info']['description']
      user.access_token = auth_hash['credentials']['token']
      user.save!
      user
    end
  end
end
