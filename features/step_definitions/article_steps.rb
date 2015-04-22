module ArticleSH
  def some
    3
  end

  def create_articles
    some.times do
      ArticleActor.create_article
    end
  end

  def view_blog
    visit articles_path
  end
end
World ArticleSH

Given(/^there are some articles$/) do
  create_articles
end

When(/^I view the blog$/) do
  view_blog
end

Then(/^I should see some articles$/) do
  page.should have_css '.article', count: some
end
