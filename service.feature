Feature: As a user, 
I should be able to access the Service Page from the Side Nav so that I can quickly search Institutions and Courses as per the requirement.

Background: I am already registered to the agentcis system

Rules:
- Must have "Can access Service Page" permission.
- By deafult "Can access Service Page" permission must be checked to all users and all roles in the system.

 Scenario: To view Service module on sidenav of Agentcis.
        Given I am on the login page
        I enter the correct email address
        I enter the correct password
        When I am successfully login.
        Then I should be able to view Service module.

Scenario: After entering service module.
    Given I can view service module on sidenav of Agentcis.
    When I click service module on sidenav of Agentcis.
    Then I should be able to view Chose Service Category: Education Services (selected by default) 
    And Search For: Select Any (by default) Dropdown will show Institutions and Courses
    And Search Text Box
    And The page will display the data depending on  what the users selects Institutions, Courses, searches or uses filters

Scenario: Search and display institution list.
    Given I am on service landing page.
    When I select  Master Category as Education Services and set Search For Institutions
    Then I can search any Institutions from the Search Box whose Master Category is Education Services and see the result.
    And The list of Institutions shall be displayed as per the my search. 
    And If the Institution Name contains the searched word then the Institution will be displayed on the list.
    And The search shall be based on anything typed on the Search Box. 
    And It will be displayed on the alphabetical order. 
    And The search can be done using multiple keywords with spaces.

Scenario: Filters for institution to get the accurate results for searched institution.
    Given  I am on service landing page.
    When I click on filer option.
    Then I can view the following filter Country,City, Related Workflow.
    And When i select the master service category and it’s partner i.e. Institution, then the filters with the above mentioned fields should be displayed.

Scenario: View institution details on the card.
    Given I am on service landing page.
    When I click on instition/partner.
    Then I can view details of instition in card.
    And I can view following details in card.
    Logo
    Name of the Institution
    Branches: Displays the branches in tags
    Main Email of the Institute
    Website
    Contact Person: Displays the name of the Primary Contact Person and his details (phone no. and email id)
    No. of Courses: Displays the total no. of courses offered by this Institution
    Enrolled: Displays total no. of  application processed in this Institution
    In Progress: Displays total no. of in-progress applications in this Institution









