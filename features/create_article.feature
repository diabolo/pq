Feature: Create articles
  As a blog owner
  I want to create articles
  So I can present my insight and wisdom to a wider audience


  Scenario: Create an article
    When I create an article
    And I save the article
    Then there should be an article
