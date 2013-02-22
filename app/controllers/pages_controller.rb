#!/bin/env ruby
# encoding: utf-8
class PagesController < ApplicationController
  
  def home
    @titre = "Accueil"
    @micropost = Micropost.new if signed_in?
  end

  def contact
    @titre = "Contact"
  end
  
  def about
    @titre = "À Propos"
  end
  
  def help
    @titre = "Aide"
  end
  
end
