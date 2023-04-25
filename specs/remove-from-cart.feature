Feature: Remove from cart
    As a user I want to able to remove products
    from the cart, so that I can but the remaining products.

Scenario: Remove "2" "Taklampa" from the cart
    Given that I am on the start page
    And that I have searched for the "Taklampa"
    When I click the buy button "5" time
    Then "5" "Taklampa" should be added to the cart
    And I click the removeOne button "2" time
    Then "3" "Taklampa" should be left in the cart

Scenario: Remove "20" "Spotlight" form the cart
    Given that I am on the start page
    And that I have searched for the "Spotlight"
    When I click the but button "20" time
    Then "20" "Spotlight" should be added to the cart
    And I click the removeOne button "19" time
    Then "1" "Spotlight" should be left in the cart