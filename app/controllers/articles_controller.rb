class ArticlesController < ApplicationController
  def index
    @articles = Blog.retrieve_articles
  end

  def new
    @article = Article.new
  end

  def create
    Blog.create_article(article_params)
    redirect_to :articles
  end

  private

  def article_params
    params.require(:article).permit(:content)
  end
end
