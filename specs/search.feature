Feature: Search
    As a user I want to able to search for products
    using the search field.


    Background:
        Given that I am on the start page

    Scenario Outline: Searching "<string>" to the cart
        When I enter the letter "<string>" in the search field
        Then I should see the product "<productName>"

        Examples:
            | string | productName |
            | s      | Spotlight   |
            | s      | Bordslampa  |
            | g      | Golvlampa   |
            | g      | Spotlight   |






    Scenario: Searching for products including "t"
        Given that I am on the start page
        When I enter the letter "t" in the search field
        Then I should see the product "Taklampa"
        And the following related results are shown
            | Spotlight |
            | Lampett   |


    Scenario: Searching for products including "l"
        Given that I am on the start page
        When I enter the letter "l" in the search field
        Then I should see the product "Bordslampa"
        And the following related results are shown
            | Taklampa  |
            | Lampett   |
            | Golvlampa |
            | Spotlight |


    #Scenario: Searching for products including "s"
    #    Given that I am on the start page
    #    When I enter the letter "s" in the search field
    #    Then I should see the product "Spotlight"
    #    And I should see the product "Bordslampa"

    #Scenario: Searching for products including "g"
    #    Given that I am on the start page
    #    When I enter the letter "g" in the search field
    #    Then I should see the product "Golvlampa"
    #    Then I should see the product "Spotlight"

    Scenario: Searching for products including "m"
        Given that I am on the start page
        When I enter the letter "m" in the search field
        Then I should see the product "Golvlampa"
        And the following related results are shown
            | Taklampa   |
            | Lampett    |
            | Bordslampa |

    Scenario: Searching for product including "lamp"
        Given that I am on the start page
        When I enter the letter "lamp" in the search field
        Then I should see the product "Golvlampa"
        And the following related results are shown
            | Taklampa   |
            | Bordslampa |
            | Lampett    |










