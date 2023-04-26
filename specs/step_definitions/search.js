import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('that I am on the start page', () => {
  // Goto the start page
  cy.visit('/');
});

When('I enter the letter {string} in the search field', (letter) => {
  // Type the letter from our feature file in the search field
  cy.get('#search').type(letter);
});

Then('I should see the product {string}', (productName) => {
  // Grab a h2, check that it contains the product name
  // and then "go up" to the product div that the h2 is inside
  // and check that the product is visible
  cy.get('div.product h2')
    .contains(productName)
    .parents('div.product')
    .should('be.visible');
});

Then("the following related results are shown", (table) => {
  // Needed to get actual data from a row table
  let products = table.rawTable.map(x => x[0]);
  for (let product of products) {
    cy.log("product", product);
    cy.get('div.product h2')
      .contains(product)
      .parents('div.product')
      .should('be.visible');
  }
})