require 'spec_helper'

describe FellowsController do
  it "displays an error for a missing fellow" do
    get :show, id: "not-here"
    response.should redirect_to(fellows_path)
    message = "The fellow you were looking for could not be found."
    flash[:alert].should == message
  end
end
