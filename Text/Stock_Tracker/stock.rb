require 'json'
require 'open-uri'

stock = "MSFT"

url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22#{stock}%22)%0A%09%09&env=http%3A%2F%2Fdatatables.org%2Falltables.env&format=json"

hash = JSON.parse(open(url).read)
#puts hash["query"]["results"]["quote"].keys
puts hash["query"]["results"]["quote"]["Symbol"]
puts hash["query"]["results"]["quote"]["Ask"]
