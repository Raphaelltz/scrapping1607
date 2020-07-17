require_relative '../lib/00_dark_trader.rb'

describe "The html code of the web page" do
  it "should return the html code of web page" do
    expect(html_page).not_to be_nil #Récupération du code HTML: la valeur ne doit pas être nul --> on doit avoir de la "matière" cad le code HTML. 
  end
end


describe "Test on the final hash." do
  final_list = get_hash
  it "should return a hash containing symbols and prices of crypto-currencies." do
    expect(final_list.any?{"BTC" "FX" "NAS"}).to be true #présence des indices des cryptos. 
  end

  it "should return an integer larger than 50" do
    expect(final_list.size).to be > 50 #plus de 50 valeurs. 
  end
end
		