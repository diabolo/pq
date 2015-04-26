module ArticleSH
  def some
    3
  end

  def create_articles
    some.times do
      Blog.create_article default_article_params
    end
  end

  # xxx_an_yyy means that we go through the UI
  def create_an_article
    view_blog
    find('#create_an_article a').click
    fill_in :article_content, with: lorem
  end


  def default_article_params
    {
      content: lorem
    }
  end

  def view_blog
    visit articles_path
  end

  def lorem
    'Lorem ipsume'
  end

  def submit_form
    find('input[type="submit"]').click
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
  expect(page).to have_css '.article', count: some
end

When(/^I create an article$/) do
  create_an_article
end

When(/^I save the article$/) do
  submit_form
end

Then(/^there should be an article$/) do
  expect(page).to have_css '.article', count: 1
end
