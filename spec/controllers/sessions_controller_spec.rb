require 'spec_helper'

class User
  def id
    42
  end
end

describe SessionsController do

  context 'when receiving an omniauth callback' do

    let(:omni_auth) { Hash.new }
    let(:user)      { User.new }

    before(:each) do
      subject.should_receive(:omni_auth).and_return(omni_auth)
      User.should_receive(:find_or_create_from_omni_auth).with(omni_auth).and_return(user)
    end

    it 'should save the user id in the session' do
      post :create
      session[:user_id].should == 42
    end

    it "should redirect to the root url" do
      post :create
      response.should redirect_to(root_url)
    end

  end

end
