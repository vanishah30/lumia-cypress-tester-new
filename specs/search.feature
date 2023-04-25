Feature: Search
As a user I want to able to search for products
using the search field.

Scenario: Searching for products including "t"
    Given that I am on the start page
    When I enter the letter "t" in the search field
    Then I should see the product "Taklampa"
    And I should see the product "Spotlight"
    And I should see the product "Lampett"

Scenario: Searching for products including "l"
    Given that I am on the start page
    When I enter the letter "l" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Golvlampa"
    And I should see the product "Spotlight"

Scenario: Searching for products including "s"
    Given that I am on the start page
    When I enter the letter "s" in the search field
    Then I should see the product "Spotlight"
    And I should see the product "Bordslampa"

Scenario: Searching for products including "k"
    Given that I am on the start page
     When I enter the letter "k" in the search field
    Then I should see the product "Taklampa"

Scenario: Searching for products including "m"
    Given that I am on the start page
    When I enter the letter "m" in the search field
    Then I should see the product "Golvlampa"
    And I should see the product "Taklampa"
    And I should see the product "Lampett"
    And I should see the product "Bordslampa"
    #And the following related results are shown
            #| related       |
            #| Taklampa |
            #| Lampett  |
            #| Bordslampa  |



    
           




