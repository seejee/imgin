require "spec_helper"

def build_omni_auth
  {
    :provider => "github",
    :uid      => "17",
    :info     => {
          :name     => "Test Guy",
          :email    => "test@test.com",
          :nickname => "github"
      }
  }
end

describe User do

  context "when finding or creating via omni auth" do
  
    let(:omni_auth) { build_omni_auth }

    context "when a user does not exist with that github uid" do
      subject         { User.find_or_create_from_omni_auth(omni_auth) }

      its(:id)         { should_not == nil }
      its(:name)       { should == "Test Guy" }
      its(:email)      { should == "test@test.com" }
      its(:github)     { should == "github" }
      its(:github_uid) { should == "17" }
    end

    context "when a user already exists with that github uid" do

      before(:each) do
        User.find_or_create_from_omni_auth(omni_auth)
      end
        
      subject   { User.find_or_create_from_omni_auth(omni_auth) }

      its(:github_uid) { should == "17" }
    end
  end
end

