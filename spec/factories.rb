#!/bin/env ruby
# encoding: utf-8
# En utilisant le symbole ':user', nous faisons que
# Factory Girl simule un modèle User.
FactoryGirl.define do
<<<<<<< HEAD
  factory :user do |user|
    user.nom                  "Michael Hartl"
    user.email                 "mhartl@example.com"
    user.password              "foobar"
    user.password_confirmation "foobar"
  end
end
=======

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
>>>>>>> updating-users
