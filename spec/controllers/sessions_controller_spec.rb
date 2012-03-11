require "spec_helper"

class FakeUser
  def id 
    42
  end
end

describe SessionsController do

  context "when receiving an omniauth callback" do

    let(:omni_auth) { Hash.new }
    let(:user)      { FakeUser.new }

    before(:each) do
      subject.stub(:omni_auth) { omni_auth }
      User.stub(:find_or_create_from_omni_auth).with(omni_auth) { user }
    end

    it "should save the user id in the session" do
      post :create
      session[:user_id].should == 42
    end

    it "should redirect to the root url" do
      post :create
      response.should redirect_to(root_url)
    end

  end

end
