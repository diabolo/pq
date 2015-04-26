# Make me Blog!!
class Blog
  def self.create_article(attrs={})
    Article.create(attrs)
  end

  def self.retrieve_articles
    Article.all
  end
end
