class CommonScreen

  def initialize(driver)
    @driver = driver
  end

  def wait_until(seconds=8)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

  def find(locator) 
    platform_loc = locator.has_key?($PLATFORM) ? locator.fetch($PLATFORM) : locator
    pp platform_loc
    wait_until { @driver.find_element platform_loc }
  end

  def enter(text, locator)
    find(locator).send_keys text
  end

  def click(locator) 
    find(locator).click
  end

  def click_back
    @driver.back
  end

  def submit(locator) 
    find(locator).submit
  end

  def get_value(locator)
    find(locator).value
  end

  def get_text(locator)
    find(locator).text
  end

  def text_include?(text, locator)
    find(locator).text.include?(text)
  end

  def is_displayed?(locator) 
    begin
      find(locator).displayed?
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end

  def scroll_to(locator)
    element = @driver.find_element(locator)
    @driver.execute_script "mobile: scrollTo", :element => element.ref
  end

  def background_app
    @driver.background_app
  end

end # CommonScreen
