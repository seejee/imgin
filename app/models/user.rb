class User < ActiveRecord::Base
  def self.find_or_create_from_omni_auth(omni_auth)
    User.new
  end
end
