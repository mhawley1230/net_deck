require 'selenium-webdriver'
require 'mtg_sdk'
require 'pry'

chromedriver_path = '/usr/local/Cellar/chromedriver/2.25/bin/chromedriver'
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'http://mtgtop8.com/format?f=ST'

10.times do |i|
  t = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr[#{i+2}]/td[1]/a")
  t.click

  tournament_data_container = driver.find_element(:xpath, '/html/body/div[3]/div/table/tbody/tr/td[1]/div')
  deck_links = tournament_data_container.find_elements(:xpath, 'div/div/a')
  deck_links.each do |link|
    puts link.text
  end
  deck_length = deck_links.length / 2

  tournament_name = driver.find_element(:xpath, '/html/body/div[3]/div/div/table/tbody/tr/td[1]').text
  tournament_info = driver.find_element(:xpath, '/html/body/div[3]/div/table/tbody/tr/td[1]/div/table/tbody/tr/td').text
  binding.pry
  
  t_data = tournament_info.split()
  tournament_format = t_data[0]
  tournament_no_of_players = t_data[1]
  tournament_date = t_data[4]

  deck_length.times do |i|
    results = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a")
    results.click

    deck_placing = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[1]").text
    deck_name = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a").text
    player = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[3]/a").text

    decklist = driver.find_elements(class_name: 'G14')
    decklist.each do |card|
      text = card.text
      split_text = text.split()
      number_played = split_text[0]
      split_name = split_text[1..-1]
      card_name = split_name.join(' ')

      while card_img = nil
        i = 0
        card_img = MTG::Card.where(name: card_name).all[i].image_url
        if card_img == nil
          i += 1
        end
      end

      if MTG::Card.where(name: card_name).all[0].colors.nil?
        card_colors = 'Colorless'
      else
        card_colors = MTG::Card.where(name: card_name).all[0].colors.join(', ')
      end
    end
  end
  driver.navigate.to 'http://mtgtop8.com/format?f=ST'
end

driver.quit
