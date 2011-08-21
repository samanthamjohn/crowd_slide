class FiveHundredPx
  include HTTParty
  YAML::ENGINE.yamler = "syck"
  base_uri 'https://api.500px.com/v1/'

  def self.search(query)
    options = { :query => { :consumer_key => ENV['FH_PX_KEY'], :term => query }}
    photos = self.get("/photos/search", options)["photos"]
    unless photos.nil?
      photos[0...10].map do |photo|
        { image_url: photo["image_url"].gsub("2.jpg", "4.jpg"),
          name: photo["name"],
          photographer: photo["user"]["fullname"],
          username: photo["user"]["username"],
          photo_id: photo["id"]
        }
      end
    end
  end

end
