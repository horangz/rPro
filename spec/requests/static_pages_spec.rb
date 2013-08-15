require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "shoul have the title 'rPro | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                                text: 'rPro | Home')
    end
  end
  
  describe "Help page" do
    it "shoul have the title'rPro | Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', 
                                text: 'rPro | Help')
    end
  end
  
  describe "About page" do
    it "shoul have the title 'rPro | About'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
                                text: 'rPro | About')
    end
  end
end
