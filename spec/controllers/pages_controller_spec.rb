#!/bin/env ruby
# encoding: utf-8

require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the good title" do
      get 'home'
      response.should have_selector("title", :content => "| Accueil")
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
