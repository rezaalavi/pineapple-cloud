# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

PineappleStep.create(:name => 'test', :body => 'click_link "Next Step" \n next_step "test2"');
PineappleStep.create(:name => 'test2', :body => 'click_on "Next Step" \n next_step "test3"');
