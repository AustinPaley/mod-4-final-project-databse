require 'rest-client'

def shoes_data_parsing
  url = "https://api.unsplash.com/search/photos?client_id=" + ENV['API_KEY'] + "&page=1&query=shoes"
  product_data = RestClient.get(url)
  parsed_product_data = JSON.parse(product_data)
  parsed_product_data
end

def create_shoe_object
  shoes_data_parsing["results"].each do |object_key, object_value|
    random_number = rand(1..100)
    Item.create(
      name: object_key["tags"][0]["title"],
      img_src: object_key["urls"]["small"],
      amount: 1,
      price: "#{random_number}"
    )
  end
end

def sunglasses_data_parsing
  url = "https://api.unsplash.com/search/photos?client_id=" + ENV['API_KEY'] + "&page=1&query=sunglasses"
  product_data = RestClient.get(url)
  parsed_product_data = JSON.parse(product_data)
  parsed_product_data
end

def create_sunglasses_object
  sunglasses_data_parsing["results"].each do |object_key, object_value|
    random_number = rand(1..100)
    Item.create(
      name: object_key["tags"][0]["title"],
      img_src: object_key["urls"]["small"],
      amount: 1,
      price: "#{random_number}"
    )
  end
end

def watches_data_parsing
  url = "https://api.unsplash.com/search/photos?client_id=" + ENV['API_KEY'] + "&page=1&query=watches"
  product_data = RestClient.get(url)
  parsed_product_data = JSON.parse(product_data)
  parsed_product_data
end

def create_watches_object
  watches_data_parsing["results"].each do |object_key, object_value|
    random_number = rand(1..100)
    Item.create(
      name: object_key["tags"][0]["title"],
      img_src: object_key["urls"]["small"],
      amount: 1,
      price: "#{random_number}"
    )
  end
end

def pants_data_parsing
  url = "https://api.unsplash.com/search/photos?client_id=" + ENV['API_KEY'] + "&page=1&query=pants"
  product_data = RestClient.get(url)
  parsed_product_data = JSON.parse(product_data)
  parsed_product_data
end

def create_pants_object
  pants_data_parsing["results"].each do |object_key, object_value|
    random_number = rand(1..100)
    Item.create(
      name: object_key["tags"][0]["title"],
      img_src: object_key["urls"]["small"],
      amount: 1,
      price: "#{random_number}"
    )
  end
end

create_sunglasses_object
create_watches_object
create_pants_object
create_shoe_object
