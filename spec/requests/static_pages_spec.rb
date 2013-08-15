require 'spec_helper'

describe "StaticPages" do
    
  let(:base_title) { 'rPro' }
    
  describe "Home page" do
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                                text: "#{base_title}")
    end
    
    it "should have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', 
                                text: "| Home")
    end
  end
  
  describe "Help page" do
    it "should have the title'rPro | Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', 
                                text: "#{base_title} | Help")
    end
  end
  
  describe "About page" do
    it "should have the title 'rPro | About'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
                                text: "#{base_title} | About")
    end
  end
  
  describe "Contact page" do
    it "should have the title 'rPro | Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', 
                                 text: "#{base_title} | Contact")
    end
  end
end
