Feature: Demo nopcommerce's top menu tab acceptance criteria


Background: User is on given URL
 When       User type URL: https://demo.nopcommerce.com
 And        User click on enter button
 Then       User is on given URL

Scenario:   Verify that user can navigate to books category
 When       User is on given URL
 And        Click on "books" tab on top menu tabs
 Then       User is navigated to books category page

Scenario:   Verify that user can see the books category page with filters and list of products
 When       User is on given URL
 And        Click on "books" tab on top menu
 And        Check filters and list tab
 Then       Books category page is displayed with filters and list tabs

Scenario:   Verify that user can see 'sort by' filter on book category page
 Given      User is on books category page
 When       User is on books category page
 And        Check 'sort by' filter is present
 Then       'sort by' filter is available on book category page

Scenario:   Verify user can see 'display' filter on book category page
 Given      User is on book category page
 When       User is on book category page
 And        Check 'display' filter is present
 Then       'display' filter is available on book category page

Scenario:   Verify user can see 'grid' tab on book category page
 Given      User is on book category page
 When       User is on book category page
 And        Check 'grid' tab is present
 Then       'grid' tab is available on book category page

Scenario:   Verify user can see 'list' tab on book category page
 Given      User is on book category page
 When       User is on book category page
 And        Check 'list' tab is present
 Then       'list' tab is available on book category page

Scenario:   Verify that user can see 'Name: A to Z' selection is present in 'sort by' filter
 Given      User is on books category page
 When       User is on books category page
 And        Click on 'sort by' filter
 And        Check that 'Name: A to Z' selection is present in 'sort by' filter

Scenario:   Verify that user can see 'Name: A to Z' is first option in 'sort by' filter
 Given      User is on books category page
 When       User is on books category page
 And        Click on 'sort by' filter
 And        Check that 'Name: A to Z' is first in order
 Then       'Name: A to Z' is first option in order

Scenario:   Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: products are filtered in alphabetical order
 Given      User is on books category page
 When       User is on books category page
 And        Click on 'sort by' filter
 And        Select 'Name: A to Z' filter
 Then       All products are displayed in alphabetical order
