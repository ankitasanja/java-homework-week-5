Feature: Books category


Background:    I should be able to see homepage
  Given        I enter URL:"https://demo.nopcommerce.com/" in browser
  And          I am on homepage

Scenario Outline: I should be able to see top menu tabs on homepage with categories
  When            I am on homepage
  Then            I am able to see top menu tabs with "<categories>"

 Examples:
| categories       |
| Computer         |
| Electronics      |
| Apparel          |
| Digital downloads|
| Books            |
| Jewellery        |
| Gift cards       |

Scenario Outline: I am able to see books page with filters
  When            I select books category from top menu tabs on homepage
  Then            I should be navigated to book category
  And             I should be able to see "<filters>"

 Examples:
| filters  |
| short by |
| display  |
| The grid |
| list tab |

Scenario Outline:  I should be able to see list of terms of each filter
  Given            I am on books page
  When             I click on "<filter>"
  Then             I should be able to see "<list>" in dropdown menu

 Examples:
| filter | list                                                                      |
| sort by| Name:A to Z, Name:Z to A, Price:Low to High, Price:High to Low, Created on|
| display| 3, 6, 9                                                                   |

Scenario Outline:  I should be able to choose any filter with specific result
  Given            I am on books page
  When             I click on "<filter>"
  And              I click on any "<option>"
  Then             I should be able to choose any filter option from the list
  And              I should be able to see "<result>"

 Examples:
| filter   | option            | result                                                            |
| sort by  | Name:A to Z       | sorted products with the product name in alphabetical order A to Z|
| sort by  | Name:Z to A       | sorted products with the product name in alphabetical order Z to A|
| sort by  | Price: low to high| sorted products with the price in descending order                |
| sort by  | Price: high to low| sorted products with the price in ascending order                 |
| sort by  | Created on        | recently added products should be show first                      |
| display  | 3                 | 3 products in a page                                              |
| display  | 6                 | 6 products in a page                                              |
| display  | 9                 | 9 products in a page                                              |

Scenario Outline: I should be able to see product display format according to display format type as per given picture in SRS document
  Given           I am on books page
  When            I click on "<display format icon>"
  Then            I should be able to see product display format according to display format type as per given picture in SRS document

 Examples:
| display format icon |
| grid                |
| list                |



