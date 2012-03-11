require "spec_helper"

describe User do

  context "when finding or creating via omni auth" do
  
    context "when a user does not exist exist with that github uid" do

      let(:omni_auth) { Hash.new }

      it "should create a new user" do
        user = User.find_or_create_from_omni_auth(omni_auth)
        user.should_not == nil
      end
    
    end

  end
end

