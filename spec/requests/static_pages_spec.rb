require 'spec_helper'

describe "StaticPages" do
    
  subject { page }
    
  describe "Home page" do
    before { visit root_path }
      
    it { page.should have_selector 'title', text: full_title('') }
  end
  
  describe "Help page" do
    before { visit help_path }
      
    it { page.should have_selector 'title', text: full_title('Help') }
  end
  
  describe "About page" do
    before { visit about_path }
      
    it { page.should have_selector 'title', text: full_title('About') }
  end
  
  describe "Contact page" do
    before { visit contact_path }
  
    it { page.should have_selector 'title', text: full_title('Contact') }
  end
end
