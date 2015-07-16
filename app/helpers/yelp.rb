helpers do
  def yelp_data
    client = Yelp::Client.new({
          consumer_key: "u2JCOo0wzUyZ-R_m84Uc1g",
          consumer_secret: ENV['YELP_CONSUMER_SECRET'],
          token: "lu9LDbrAEcHIDop5hWpfvoPIOORa-YYH",
          token_secret: ENV['YELP_TOKEN_SECRET']
    })
    query = {
            term: 'restaurant',
            radius_filter: 8000
  }
    response = client.search('1625 NE Killingsworth Portland, Oregon 97211', query)
    i = 0
    total = 0
    while i < 20
      total += response.businesses[i].rating
      i += 1
    end
  end

end