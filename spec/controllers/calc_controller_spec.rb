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
      post :calculate, :expr1 => '1', :expr2 => '2', :action_operator => '+', :remote => true, :format => 'js'
      response.should be_success
      #response.should_receive :format => 'js'
      #response.body.should include('document.getElementById("result").innerHTML = 3')
      expect(response).to render_template("calculate")
    end
  end

end
