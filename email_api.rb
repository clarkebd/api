require 'unirest'
require 'json'

response = Unirest.get("https://app.perf.icontact.com/icp/a/",
 headers:{"Accept" => "application/json",
  "API-Username" =>"dev-mail+brian1@devmail.icontact.com",
  "API-Password" =>"Tester01",
  "API-AppId" => "fLZvAeOCtk7T74uSMStFbZmOIbsYGxOt",
  "API-Version" => "2.2",
  "Content-Type" => "application/json"} )


puts "RESPONSE CODE: " + response.code.to_s 

#puts response.headers

puts "\n Object/Associative Array BODY CONTENT (PARSED): \n" + response.body.to_s 

res = response.body

# so below only works on the PARSED body which is in the form of an Object/Associate Array
puts "\n\n KEY VALUES:"
res.each  {|key, value| puts "#{key} is #{value}" }
puts "\n"
puts " Example Key of limit: " + res.select { |k,v| k == "limit"}.to_s

# This prints the UNPARSED JSON body received from the API
puts "\n\n RAW RESPONSE (NOT Parsed):"
raw=response.raw_body
puts raw

puts raw[0] # literally the first character in the raw response body which is a '{'
puts raw[1] # literraly second character which is a quotation mark ' " '

puts res["accounts"|"billingStreet"]





###############################
# ALL Garbage below.
###############################


# require 'net/https'
# require 'net/http'
# require 'open-uri'
# require 'json'

# #uri = URI('https://app.perf.icontact.com/icp/a/')
# #response=Net::HTTP.get(uri)
# #JSON.parse(response)


# uri = URI.parse("https://app.perf.icontact.com/icp/a/")
# req = Net::HTTP::Get.new(uri)
# req.use_ssl = true
# req.verify_mode = OpenSSL::SSL::VERIFY_NONE
# req.add_field("API-Username", "dev-mail+brian1@devmail.icontact.com")
# req.add_field("API-Password", "Tester01")
# req.add_field("API-AppId", "fLZvAeOCtk7T74uSMStFbZmOIbsYGxOt")
# req.add_field("API-Version", "2.2")
# #req.add_field("Content-Type", "application/xml")

# res = Net::HTTP.new(uri.host, uri.port).start do|http|
#   http.request(req)
# end

# puts res.body
