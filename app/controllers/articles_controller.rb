class ArticlesController < ApplicationController
  def index
    @articles = Blog.retrieve_articles
  end
end
