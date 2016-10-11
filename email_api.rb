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

puts "BODY CONTENT: \n" + response.body.to_s 

res=response.body

accounts=JSON.parse(res)

accounts[ 'billingStreet'   ].keys

# def format_result(accounts)
#   result.map do |seg|
#     "\n\n#{ seg['billingStreet'] }, #{ seg['billingCity'] }"
#   end.join
# end

# text += format_result(accounts)
# puts text




###############################
# ALL Garbage below.  Doesn't work
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
