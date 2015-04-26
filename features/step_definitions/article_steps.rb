module ArticleSH
  def some
    3
  end

  def create_articles
    some.times do
      Blog.create_article
    end
  end

  # xxx_an_yyy means that we go through the UI
  def create_an_article
    visit root_path
    find('#create_an_article').click
    fill_in :text, with: lorem
    submit_form
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
  expect(page).to have_css '.article', count: some
end

When(/^I create an article$/) do
  create_an_article
end

When(/^I save the article$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^there should be an article$/) do
    pending # express the regexp above with the code you wish you had
end
