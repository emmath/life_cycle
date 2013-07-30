require 'spec_helper'

describe StatusesController do
it "displays an error for a missing status" do
  get :show, :id => "not-here"
  response.should redirect_to(statuses_path)
  message = "The status you were looking for could not be found."
  flash[:alert].should == message
end
