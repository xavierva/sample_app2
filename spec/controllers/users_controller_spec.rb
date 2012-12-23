#!/bin/env ruby
# encoding: utf-8
require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'show'" do
    
    before(:each) do
      @user = Factory(:user)
    end
      
    it "devrait réussi" do
      get :show, :id => @user
      response.should be_success
    end
    
    it "devrait trouver le bon utilisateur" do
      get :show, :id => @user
      assigns(:user).should == @user
    end

  end
    
  def show
    @user = User.find(params[:id])
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  it "should have the good title" do
    get 'new'
    response.should have_selector("title", :content => "| Inscription")
  end

end
