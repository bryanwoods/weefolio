require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PiecesController do

  #Delete these examples and add some real ones
  it "should use PiecesController" do
    controller.should be_an_instance_of(PiecesController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
