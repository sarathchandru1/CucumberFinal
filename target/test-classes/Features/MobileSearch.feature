#Author:sarath@your.domain.com
@Flipkart @Regression
Feature: Mobile Search validation

Background:
    Given user launches flipkart application
    And user enters credentials and click on login

  #Scenario: validating mobile purchase
  #  When user searching the mobile
  #  And user click on add to cart
  #  Then navigates into add to cart and check the order updated
  
  Scenario: validating mobile purchase by using 1 dim list
    When user searching the mobile by one dimesional list concept
      | iPhone | SAMSUNG | OnePlus | Nokia |
    And user click on add to cart
    Then navigates into add to cart and check the order updated

@Smoke @sanity
  Scenario: validating mobile purchase by using 1 dim Map
    When user searching the mobile by one dimesional map concept
      | Phone1 | iPhone  |
      | Phone2 | SAMSUNG |
      | Phone3 | OnePlus |
      | Phone4 | Nokia   |
    And user click on add to cart
    Then navigates into add to cart and check the order updated

  Scenario Outline: 
    When user searching the mobile "<Phone Name>"
    And user click on add to cart
    Then navigates into add to cart and check the order updated

    Examples: 
      | Phone Name |
      | iPhone     |
      | SAMSUNG    |
      | realme     |
