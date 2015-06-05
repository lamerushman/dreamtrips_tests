require_relative 'common'

class Catalog < CommonScreen

  SCREEN_TITLE_LOCATOR = { :ANDROID => { id: 'UICatalog'},
                         :IOS => { uiautomation: '.navigationBars()[0].staticTexts().firstWithPredicate("name == \'UICatalog\'")'}}
  BUTTONS_CATALOG_LOCATOR = { :ANDROID => { id: 'Buttons'},
                              :IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name beginswith \'Buttons\'")'}}
  CONTROLS_CATALOG_LOCATOR = { :IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name beginswith \'Page\'")'}}
  TEXTFIELDS_CATALOG_LOCATOR = { :IOS=> { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name endswith \'Fields\'")'}}
  SEARCHBAR_CATALOG_LOCATOR = {:IOS => {uiautomation: '.tableViews()[0].cells().firstWithPredicate("name  beginswith \'Search\'")'} }
  TEXTVIEW_CATALOG_LOCATOR = { :IOS => {uiautomation: '.tableViews()[0].cells().firstWithPredicate("name endswith \'View\'")' }}
  PICKER_CATALOG_LOCATOR = {:IOS => {uiautomation: '.tableViews()[0].cells().firstWithPredicate("name  beginswith \'Date\'")' }}
  IMAGES_CATALOG_LOCATOR = {:IOS => {uiautomation: '.tableViews()[0].cells().firstWithPredicate("name beginswith \'Image\'")'} }
  WEB_CATALOG_LOCATOR = {:IOS => {uiautomation: '.tableViews()[0].cells().firstWithPredicate("name  beginswith \'Web\'")'}}
  SEGMENT_CATALOG_LOCATOR = { :IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name beginswith \'Segmented\'")'} }
  TOOLBAR_CATALOG_LOCATOR = { :IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name == \Toolbars\'")'}}
  ALERT_CATALOG_LOCATOR = { :IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name beginswith \Alert\'")'} }
  TRANSITIONS_CATALOG_LOCATOR = {:IOS => { uiautomation: '.tableViews()[0].cells().firstWithPredicate("name == \TransitionsTitle\'")'} }

  def screen_title_displayed?
    is_displayed? SCREEN_TITLE_LOCATOR
  end

  def ui_elements
    yield BUTTONS_CATALOG_LOCATOR
    yield CONTROLS_CATALOG_LOCATOR
    yield TEXTFIELDS_CATALOG_LOCATOR
    yield SEARCHBAR_CATALOG_LOCATOR
    yield TEXTVIEW_CATALOG_LOCATOR
    yield PICKER_CATALOG_LOCATOR
    yield IMAGES_CATALOG_LOCATOR
    yield WEB_CATALOG_LOCATOR
    yield SEGMENT_CATALOG_LOCATOR
    yield TOOLBAR_CATALOG_LOCATOR
    yield ALERT_CATALOG_LOCATOR
    yield TRANSITIONS_CATALOG_LOCATOR
  end

  def ui_element_displayed?(ui_element)
    is_displayed? ui_element
  end

  def click_ui_element(ui_element)
    click ui_element
  end

  def click_buttons
    click BUTTONS_CATALOG_LOCATOR
  end

  def click_controls
    click CONTROLS_CATALOG_LOCATOR
  end

end # Catalog
