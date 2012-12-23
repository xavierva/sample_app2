#!/bin/env ruby
# encoding: utf-8

require 'spec_helper'

describe "LayoutLinks" do
  
    it "should find a home page  at '/'" do
      get '/'
      response.should have_selector('title', :content => "Accueil")
    end
    
    it "should find a contact page at /contact" do
      get '/contact'
      response.should have_selector('title', :content => "Contact")
    end
    
    it "should find a contact page at /about" do
      get '/about'
      response.should have_selector('title', :content => "À Propos")
    end
    
    it "should find a contact page at /help" do
      get '/help'
      response.should have_selector('title', :content => "Aide")
    end
    
    it "should be a subscription page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => "Inscription")
    end
    
    it "devrait avoir le bon lien sur le layout" do
        visit root_path
        click_link "À Propos"
        response.should have_selector('title', :content => "À Propos")
        click_link "Aide"
        response.should have_selector('title', :content => "Aide")
        click_link "Contact"
        response.should have_selector('title', :content => "Contact")
        click_link "Accueil"
        response.should have_selector('title', :content => "Accueil")
        click_link "S'inscrire !"
        response.should have_selector('title', :content => "Inscription")
      end
    
end
