#!/bin/env ruby
# encoding: utf-8
# En utilisant le symbole ':user', nous faisons que
# Factory Girl simule un modèle User.
FactoryGirl.define do
  factory :user do |user|
    user.nom                  "Michael Hartl"
    user.email                 "mhartl@example.com"
    user.password              "foobar"
    user.password_confirmation "foobar"
  end
end