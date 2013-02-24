#!/bin/env ruby
# encoding: utf-8
class PagesController < ApplicationController
  
  def home
    @titre = "Accueil"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
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
