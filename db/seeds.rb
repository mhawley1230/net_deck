require 'selenium-webdriver'
require 'mtg_sdk'

chromedriver_path = '/usr/local/Cellar/chromedriver/2.25/bin/chromedriver'
Selenium::WebDriver::Chrome.driver_path = chromedriver_path
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'http://mtgtop8.com/format?f=ST'

10.times do |i|
  t = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr[#{i+2}]/td[1]/a")
  t.click

  tournament_data_container = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div")
  deck_links = tournament_data_container.find_elements(:xpath, "div/div/a")

  deck_length = deck_links.length / 2

  tournament_name = driver.find_element(:xpath, "/html/body/div[3]/div/div/table/tbody/tr/td[1]").text
  tournament_info = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/table/tbody/tr/td").text

  t_data = tournament_info.split()
  tournament_format = t_data[0]
  tournament_description = t_data[1]

  current_tournament = Tournament.create!( name: tournament_name, description: tournament_info,
    format: tournament_format )

  deck_length.times do |i|
    results = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a")
    results.click

    deck_placing = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[1]").text
    deck_name = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[2]/a").text
    player = driver.find_element(:xpath, "/html/body/div[3]/div/table/tbody/tr/td[1]/div/div[#{i+1}]/div[3]/a").text

    deck = []
    main_deck = driver.find_elements(xpath: "/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[1]/table/tbody/tr/td/div")
    main_deck_0 = driver.find_elements(xpath: "/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr/td/div")
    side_board = driver.find_elements(xpath: "/html/body/div[3]/div/table/tbody/tr/td[2]/table[2]/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr/td/div")
    deck = deck.push(main_deck_0).push(main_deck_0).push(side_board)

    current_deck = Deck.create!( name: deck_name, placing: deck_placing, player: player,
      tournament_id: current_tournament.id )

    deck.each_with_index do |list, index|
      list.each do |card|
        text = card.text
        split_text = text.split()
        number_played = split_text[0]
        split_name = split_text[1..-1]
        card_name = split_name.join(" ")

        i = 0
        card_img = MTG::Card.where(name: card_name).all[i].image_url
        if card_img == nil
          i = 1
          card_img = MTG::Card.where(name: card_name).all[i].image_url
          if card_img == nil
            card_img = ''
          end
        end

        if MTG::Card.where(name: card_name).all[0].colors.nil?
          card_colors = "Colorless"
        else
          card_colors = MTG::Card.where(name: card_name).all[0].colors.join(", ")
        end

        if index == 2
          main = false
        else
          main = true
        end
        binding.pry

        Card.create!( name: card_name, colors: card_colors, number_played: number_played,
          img_url: card_img, main?: main, deck_id: current_deck.id )
      end
    end
  end
  driver.navigate.to "http://mtgtop8.com/format?f=ST"
end

driver.quit
