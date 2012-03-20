require "spec_helper"

describe SessionsController do

  context "when receiving an omniauth callback" do
    let(:omni_auth) { stub }
    let(:user)      { User.new }

    before(:each) do
      subject.stub(:omni_auth) { omni_auth }
      user.stub(:id)           { 42 }
      User.stub(:find_or_create_from_omni_auth).with(omni_auth) { user }
    end

    context "when there are no errors" do
      before(:each) do
        post :create
      end

      it "should save the user id in the session" do
        session[:user_id].should == 42
      end

      it "should redirect to the root url" do
        response.should redirect_to user
      end
    end
  end

  context "when logging out" do
    before(:each) do
      session[:user_id] = 42
      post :destroy
    end

    it "should clear the user from the session" do
      session[:user_id].should == nil
    end

    it "should redirect to the root url" do
      response.should redirect_to(root_url)
    end
  end
end
