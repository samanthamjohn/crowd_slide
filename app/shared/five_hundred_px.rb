class FiveHundredPx
  include HTTParty
  YAML::ENGINE.yamler = "syck"
  base_uri 'https://api.500px.com/v1/'

  def self.search(query)
    options = { :query => { :consumer_key => ENV['FH_PX_KEY'], :term => query }}
    result = self.get("/photos/search", options)
    result["photos"].sort { |p1,p2| p2["created_at"] <=> p1["created_at"] }
  end

end
