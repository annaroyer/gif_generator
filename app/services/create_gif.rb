class CreateGif
  def self.call(category)
    api_instance = GiphyClient::DefaultApi.new
    key = "YlojntlcQH81pNtzKCqcAMQMSerO0Ttn"
    result = api_instance.gifs_random_get(key, {tag: category})
    Gif.create(category: category, image_path: result.data.fixed_height_small_url)
  end
end
