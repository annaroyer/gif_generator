class Admin::GifsController < Admin::BaseController
  def new
  end

  def create
    gif = Gif.new(gif_params)
    if gif.save
      redirect_to gifs_path
    else
      render :new
    end
  end

  private

  def gif_data
    api_client = GiphyClient::DefaultApi.new
    api_key = "YlojntlcQH81pNtzKCqcAMQMSerO0Ttn"
    opts = {tag: params[:category]}
    result = api_client.gifs_random_get(api_key, opts)
    result.data
  end

  def gif_params
    { id: gif_data.id,
      category: params[:category],
      image_path: gif_data.fixed_height_small_url }
  end
end
