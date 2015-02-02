When(/^I GET '\/show' for id: XXXX$/) do
  @pasteid = "/api/json/177666/55550514/"
  @var = HTTParty.get(@url + @pasteid)
end

Then(/^the response should be (\d+) OK$/) do |arg1|
  if @var.code == 200
	true
  else
 	raise 'API Server not found'
  end
end

Then(/^I should be able to get details including Author and data$/) do
  @api_response = JSON.parse(@var.body)["result"]
  puts @api_response
  author = @api_response["author"]
  data = @api_response["data"]

  if author == "Anisha" and data == "hello API"
    puts "Status: OK"
  else
    raise 'Incorrect results'
  end
end
