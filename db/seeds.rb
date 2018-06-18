require 'rest-client'

def data_parsing
  url = "https://api.unsplash.com/search/photos?client_id=" + ENV['API_KEY'] + "&page=1&query=shoes"
  product_data = RestClient.get(url)
  parsed_product_data = JSON.parse(product_data)
  parsed_product_data
end

def create_new_object
  data_parsing["results"].each do |object_key, object_value|
    random_number = rand(1..100)
    Item.create(
      name: object_key["tags"][0]["title"],
      img_src: object_key["urls"]["raw"],
      amount: 1,
      price: "#{random_number}"
    )
  end
end

create_new_object
