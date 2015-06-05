require_relative 'helper'
require_relative '../screens/catalog'

describe 'Catalog' do

  before(:each) do
    @screen = CommonScreen.new(@driver)
    @catalog = Catalog.new(@driver)
  end

  it 'assert each menu item is displayed', :smoke do
    @catalog.screen_title_displayed?
    @catalog.ui_elements do |ui_element|
      expect(@catalog.ui_element_displayed?(ui_element)).to be_truthy
    end
  end

  it 'click each menu item', :regression do
    @catalog.ui_elements do |ui_element| 
      expect(@catalog.screen_title_displayed?).to be_truthy
      @catalog.click_ui_element(ui_element)
      expect(@catalog.screen_title_displayed?).to be_falsey
      @screen.click_back
    end
  end

end # Catalog
