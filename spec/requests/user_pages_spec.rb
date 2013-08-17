require 'spec_helper'

describe "UserPages" do
    
    subject { page }
    
    describe "user pages" do
        before { visit signup_path }
        
        it { should have_selector 'title', text: full_title('Sign up') }
    end
end