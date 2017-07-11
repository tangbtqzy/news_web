# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "highline/import"
say(""+"<%= color( 'DB Seed will set initial data for the application', :white, :on_green) %>")
say(""+"<%= color( 'Will you clean your current #{Rails.env} database? !!!\n  Type yes to truncate db:', :white, :on_red) %>")
load File.expand_path('../seed_data.rb', __FILE__)