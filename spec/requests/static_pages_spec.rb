require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Let's Share'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Let's Share")
    end
    it "should have the title 'Place holder'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Place holder | Home")
    end
  end
  
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end
    it "should have the title 'Place holder'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Place holder | Help")
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
    it "should have the title 'Place holder'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Place holder | About Us")
    end
  end
end
