class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=keyword")  # API key is in the Insomnia header
    render json: response
  end
end
