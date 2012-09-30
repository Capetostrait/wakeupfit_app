require'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Strong Friends" }
  #
  describe "Home page" do
    ##
    it "should have the h1 'Strong Friends'" do
      visit '/static_pages/gidday'
      page.should have_selector('h1', :text => 'Strong Friends')
    end
  
  
    it "should have the base title" do
      visit '/static_pages/gidday'
      page.should have_selector('title', 
                            :text => "Strong Friends")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/gidday'
      page.should_not have_selector('title', :text => '| Gidday')
    end
    ##
  end
  
  
  ##
  describe "Contact Us" do 
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact Us")
    end
  ##  
  end
    
  ##
  describe "FAQ" do

      it "should have the h1 'FAQ" do
        visit '/static_pages/faq'
        page.should have_selector('h1', :text => "FAQ")
      end
      
      it "should have the title 'FAQ'" do
        visit '/static_pages/faq'
        page.should have_selector('title',
                          :text => "#{base_title} | FAQ")
      end
    ##  
  end
  #
end
  
  
  
  