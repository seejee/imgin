class User < ActiveRecord::Base
  def self.find_or_create_from_omni_auth(omni_auth)
    args = {
      :name        => omni_auth[:info][:name],
      :email       => omni_auth[:info][:email],
      :github      => omni_auth[:info][:nickname],
      :github_uid  => omni_auth[:uid],
    }

    create!(args)
  end
end
