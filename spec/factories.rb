#!/bin/env ruby
# encoding: utf-8
# En utilisant le symbole ':user', nous faisons que
# Factory Girl simule un modèle User.
FactoryGirl.define do

  sequence :email do |n|
      "email#{n}@factory.com"
  end

  factory :user do |user|
    user.nom                  "Michael Hartl"
    user.email                 "test@bafasdfad.com"
    user.password              "foobar"
    user.password_confirmation "foobar"
  end 
  
  
end
