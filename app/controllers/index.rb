get '/' do
  find_menus
  erb :index
end

post '/' do
  find_menus
  if params[:meal] == "dinner"
    erb :"_dinner", layout: false
  else
    erb :"_breakfast", layout: false
  end
end

post '/menu' do
  find_menus
  @items = Meal.where("description LIKE ?", "%#{params[:query]}%");
  erb(:"_query_return", locals: {items: @items}, layout: false)
end

post '/comments' do
  @name = params[:name]
  @comment = params[:comment]
  new_comment = Comment.new(name: @name, description: @comment)
  if new_comment.save
    erb :"_single_comment", layout: false
  else
    redirect '/'
  end
end



  # yelp_stuff = HTTParty.get("http://api.yelp.com/v2/search",
  #             # headers: {

  #             #   },
  #             query: {
  #               "oauth_consumer_key" => "u2JCOo0wzUyZ-R_m84Uc1g",
  #               "oauth_token" => "lu9LDbrAEcHIDop5hWpfvoPIOORa-YYH",
  #               "oauth_signature_method" => "hmac-sha1",
  #               "oauth_signature" => ENV["YELP_TOKEN_SECRET"],
  #               "oauth_timestamp" => "1433455531",
  #               "oauth_nonce" => "123",
  #               "term" => "restaurants",
  #               "limit" => 20,
  #               "radius_filter" => 8000,
  #               "location" => "1625 NE Killingsworth Portland, Oregon 97211"
  #               }
  #             )
  # p yelp_stuff


