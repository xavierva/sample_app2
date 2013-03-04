#!/bin/env ruby
# encoding: utf-8

require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
      @base_titre = "Ruby on Rails Tutorial Sample App"
  end
  
  describe "GET 'home'" do
    
    describe "quand pas identifié" do

          before(:each) do
            get :home
          end

          it "devrait réussir" do
            response.should be_success
          end

          it "devrait avoir le bon titre" do
            response.should have_selector("title",
                                          :content => "#{@base_titre} | Home")
          end
    end
    
    describe "quand identifié" do

          before(:each) do
            @user = test_sign_in(FactoryGirl.create(:user))
            other_user = FactoryGirl.create(:user, :email => Factory.generate(:email))
            other_user.follow!(@user)
          end

          it "devrait avoir le bon compte d'auteurs et de lecteurs" do
            get :home
            response.should have_selector("a", :href => following_user_path(@user),
                                               :content => "0 auteur suivi")
            response.should have_selector("a", :href => followers_user_path(@user),
                                               :content => "1 lecteur")
          end
    end
    
    
    
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the good title" do
      get 'contact'
      response.should have_selector("title", :content => "| Contact")
    end
    
  end
  
  describe "GET 'about'" do
    it "should work" do
      get 'about'
      response.should be_success
    end
    
    it "should have the good title" do
      get 'about'
      response.should have_selector("title", :content => "| À Propos")
    end
    
  end
  
  describe "GET 'help'" do
    it "should work" do
      get 'help'
      response.should be_success
    end
    
    it "should have the good title" do
      get 'help'
      response.should have_selector("title", :content => "| Aide")
    end
    
  end

end
