
require 'rspec'
require 'rubocop'
require 'pry'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'


#On récupère le HTML de la page pour les noms de villes. 
def html_cities
	names_html = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
	return names_html
end 



#On récupère la ligne de code dans laquelle est la liste des noms de communes 
def cities_names_lines
	names_html = html_cities
	lines = names_html.xpath("/html/body/tbody/tr[3]/td/tbody/tr/td[2]/p[2]/object/tbody/tr[2]/td/tbody/tr/td[1]/p/a[1]

")
#problème de selection!
	puts lines
	return lines
end

cities_names_lines




#On ne conserve que le nom de la commune. 
