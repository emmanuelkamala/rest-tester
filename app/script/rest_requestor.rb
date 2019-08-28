require 'rest-client'
  url = "http://localhost:3000/users"

  puts RestClient.get(url)

  puts RestClient.get(url), {params: {id: 20}}
  
  puts RestClient.get(url), {accept: :json}

  puts RestClient.post(url), {param1: 'one', nested: {param2: 'two'}}

  puts RestClient.post(url), {'x' => 1}.to_json, {content_type: :json, accept: :json}

  puts RestClient.delete(url)