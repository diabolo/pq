# Make me Blog!!
class Blog
  def self.retrieve_articles
    Article.all
  end

  def self.create_article(params)
    Article.create(params)
  end
end
