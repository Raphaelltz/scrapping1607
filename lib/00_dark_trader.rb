
require 'rspec'
require 'rubocop'
require 'pry'
require 'rubygems'
require 'nokogiri'   
require 'open-uri'



#On récupère l'HTML de la page.
def html_page 
	page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
	return page
end 


#On repère les balises permettant d'identifier la partie "Nom des monnaies" + "valeur" 

def get_hash
page = html_page
	names = page.xpath("/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div
") 
	values = page.xpath("/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a
")



#Je dégage les indices et les valeurs de la ligne de code. 
names_list = Array.new
names.each do |i|
	names_list << i.text
end 

values_list = Array.new
values.each do |i|
	values_list << i.text[1..-1]
end 




#Mettre dans un tableau mes deux listes
board = Hash.new
names_list.zip(values_list){|k,v|board[k] = v}


puts board

end
get_hash







#Tout mettre dans un tableau

	


