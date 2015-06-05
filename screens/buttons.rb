require_relative 'common'

class Buttons < CommonScreen
  SCREEN_TITLE_LOCATOR = { :ANDROID => { name: 'Buttons'},
                         :IOS => { uiautomation: '.navigationBars()[0].staticTexts().firstWithPredicate("name == \'Buttons\'")'} }
  
  def screen_title_displayed?
    is_displayed? SCREEN_TITLE_LOCATOR
  end

end # Buttons
