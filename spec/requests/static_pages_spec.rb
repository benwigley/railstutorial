require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home Page" do
    it "shuold have the content 'Rails Turorial App'" do
      visit "/static_pages/home"
      page.should have_content('Rails Turorial App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help Page" do
    it "shuold have the content 'Help'" do
      visit "/static_pages/help"
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "shuold have the content 'About'" do
      visit "/static_pages/about"
      page.should have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About")
    end
  end

end
