require_relative 'helper'
require_relative '../screens/catalog'
require_relative '../screens/buttons'

describe 'Buttons' do

  before(:each) do
    @catalog = Catalog.new(@driver)
    @buttons = Buttons.new(@driver)
  end

  it '- assert screen opens', :smoke do
    expect(@catalog.screen_title_displayed?).to be_truthy
    @catalog.click_buttons
    expect(@buttons.screen_title_displayed?).to be_truthy
  end

end # Buttons
