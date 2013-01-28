require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  let(:base_title) { "raC looP" }
  
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1',    text: 'Share a Ride') }
    it { should have_selector('title', text: "#{base_title}") }
    it { should_not have_selector 'title', text: '| Home' }
  end
  
  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: "#{base_title} | Help") }
  end

  describe "About page" do 
    before { visit about_path }

    it { should have_selector('h1',    text: 'About Us') }
    it { should have_selector('title', text: "#{base_title} | About Us") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact Us') }
    it { should have_selector('title', text: "#{base_title} | Contact Us") }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: "#{base_title} | About Us"
    click_link "Help"
    page.should have_selector 'title', text: "#{base_title} | Help"
    click_link "Contact"
    page.should have_selector 'title', text: "#{base_title} | Contact Us"
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: "#{base_title} | Sign Up"
    click_link "raC looP"
    page.should have_selector 'title', text: "#{base_title}"
  end
end
