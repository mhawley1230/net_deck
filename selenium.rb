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

  t_data = tournament_info.split()
  tournament_format = t_data[0]
  tournament_description = t_data[1]

  Tournament.create!( name: tournament_name, description: tournament_info,
    format: tournament_format )

  deck_length.times do |i|
    results = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a")
    results.click

    deck_placing = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[1]").text
    deck_name = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a").text
    player = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[3]/a").text

    main_deck_0 = driver.find_elements(xpath: '/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[1]')
    main_deck_1 = driver.find_elements(xpath: '/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[2]')
    side_board = driver.find_elements(xpath: '/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[3]')
    deck_arr = main_deck_0.concat(main_deck_1)
    deck_arr = deck_arr.concat(side_board)

    

    deck_arr.each_with_index do |card, index|
      text = card.text
      split_text = text.split()
      number_played = split_text[0]
      split_name = split_text[1..-1]
      card_name = split_name.join(' ')

      while card_img == nil
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

      if index = 2
        main? = false
      else
        main? = true
      end
    end
  end
  driver.navigate.to 'http://mtgtop8.com/format?f=ST'
end

driver.quit
