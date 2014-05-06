require 'spec_helper'

describe CalcController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST 'calculate'" do
    it "returns http success" do
      post :calculate, :expr1 => '1', :expr2 => '2', :action_operator => '+'
      response.should be_success
    end
  end

end
