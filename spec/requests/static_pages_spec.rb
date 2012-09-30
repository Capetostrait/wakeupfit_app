require'spec_helper'

describe "Static pages" do
  #
  describe  "Home page" do

    it "should have the h1 'Strong Friend'" do
      visit '/static_pages/gidday'
      page.should have_selector('h1', :text => 'Strong Friend')
    end
    
    it "should have the title 'gidday'" do
      visit '/static_pages/gidday'
      page.should have_selector('title',
              :text => "Strong Friend | Gidday")
    end
  end
  ###
  describe "Contact Us" do 
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "Strong Friend | Contact Us")
    end
  end  
  ###
  describe "FAQ's" do

      it "should have the h1 'FAQ's'" do
        visit '/static_pages/faq'
        page.should have_selector('h1', :text => "FAQ's")
      end
      
      it "should have the title 'FAQ's'" do
        visit '/static_pages/faq'
        page.should have_selector('title',
                          :text => "Strong Friend | FAQ's")
      end
  end
  #
end
  
  
  
  