
require 'rspec'
require 'pry'
require 'rubocop'
require  'rubygems'
require 'nokogiri'
require 'open-uri'



#programme Trader
def name_crypto
name = []
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*[@class="text-left col-symbol"]').each do |el| # le "@" permet de spécifier le chemin
name << el.text
   end
return name
end
puts name_crypto


def value_crypto
value = []
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//*[@class="price"]').each do |el|  # lien Xpath --> retourne un array de hash.
value << el.text #.text #pour extraire le .text de chaque élément html de l'array de la page.
  end
return value
end
puts value_crypto


def crypto # combine les 2 arr plus haut
name = name_crypto
value = value_crypto
crypto_money = []
n =0
(name.length).times do
crypto_money << Hash[name[n], value[n]]
n += 1
   end
return crypto_money
end
puts crypto






# #Programme Mairie
# def get_townhall_email(email)
#   mairies = []
#   page = Nokogiri::HTML(open("https://http://annuaire-des-mairies.com/val-d-oise.html/"))
#   page.xpath('//*[@class='lientxt']').each do |url|
#   get_townhall_email << url.values(1)
#       end
#   email.map do |url|
#   url.split(email)
#
#
#
# end
# return mairies
# end
# puts get_townhall_email(email_url)
