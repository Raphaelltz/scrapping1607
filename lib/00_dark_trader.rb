
require 'rspec'
require 'rubocop'
require 'pry'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'httparty'
require 'byebug'



def scraper 
	url = "https://coinmarketcap.com/"
	unparsed_page = HTTParty.get(url)
	parsed_page = Nokogiri::HTML(unparsed_page)
	cryptos_listings = parsed_page.css('tr.cmc-table-row')
	cryptos_listings.each do |crypto_listings|
		crypto = {
			name: crypto_listings.css('a.cmc-link').text
			}
		byebug
	end
end 

scraper 




