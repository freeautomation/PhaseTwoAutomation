Feature: To test all the feature of manage admins page
  As an user of the application
  I want to test various functionalities of Manage Admins page

  Background: Login:loginSuccess

@Group(1)
  Scenario: To Verify the page-title of 'Manage Admins' page
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
@Group(2)
  Scenario: To verify 'Manage Admin' link from bread crumb menu
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I CLICK manageAdminBreadCrumb link
    Then I am ON manageAdmins page
@Group(3)
  Scenario: Verify the error message while adding another admin without entering the required details for the currnt admin form with DATA AnotherAdminErrorMsg_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I CLICK addAnotherAdmin link
    Then a pop up is displayed
    Then I CLICK saveToAddAnotherAdmin button
    And I VERIFY addAnotherAdminErrorMessage with DATA AnotherAdminErrorMsg_Success
    Then I am ON addAdmin page
@Group(4)
    Scenario: To create an Admin and click on the newly created Admin to view and verify the Admin Profile with DATA AddAdmin_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    When I PERFORM clickOnAdminName to view Admins Profile details
    Then I am ON adminViewProfile page
    And I VERIFY adminDetails on view profile page
    Then I am ON adminViewProfile page
@Group(5)
  Scenario: To verify 'Manage Admin' link from bread crumb menu from View Profile page with DATA AddAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    When I PERFORM clickOnAdminName to view Admins Profile details
    Then I am ON adminViewProfile page
    Then I CLICK manageAdminBreadCrumb link
    Then I am ON manageAdmins page
    
@Group(6)
  Scenario: To Verify the created Triner Admin with DATA AddTrainerAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK leftMenuButton link
    When I PERFORM logOut action
    Then I am ON home page
    And I CLICK login button
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    Then I VERIFY ifLoggedInAsTrainer
    And I am ON dashboard page

  Scenario: To Verify the created Job Admin with DATA AddJobAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK leftMenuButton link
    When I PERFORM logOut
    Then I am ON home page
    And I CLICK login button
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    Then I VERIFY ifLoggedInAsJobAdmin
    And I am ON dashboard page

  Scenario: To Verify the created Sub Admin with DATA AddSubAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK leftMenuButton link
    When I PERFORM logOut
    Then I am ON home page
    And I CLICK login button
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    Then I VERIFY ifLoggedInAsSubAdmin
    And I am ON dashboard page

@Group(8)
  Scenario: To verify the change privilages page for a random Admin with DATA AddSubAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin button
    Then I am ON addAdmin page
    And I ENTER all the required fields with DATA AddSubAdmin_Success
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created
    Then I PERFORM clickOnChangePrivilages link of a created Admin with DATA ChangePrivilageEmail_Success
    Then I am ON changePrivilages page

  Scenario: To verify the change privilages for a newly created Admin with DATA AddTrainerAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin button
    Then I am ON addAdmin page
    And I ENTER all the required fields with DATA AddTrainerAdmin_Success
    When I SUBMIT the form
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    When I PERFORM clickOnNewAdminChangePrivilage link
    Then I am ON changePrivilages page
    Then I ENTER valid details with DATA ChangePrivilages_Success
    Then I SUBMIT the form
    Then I am ON manageAdmins page

@Group(7)
  Scenario: To change the privilages of the Trainer Admin and verify that the privilages are changed to Job Admin with DATA AddTrainerAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin button
    Then I am ON addAdmin page
    And I ENTER all the required fields with DATA AddTrainerAdmin_Success
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    When I PERFORM clickOnNewAdminChangePrivilage link
    Then I am ON changePrivilages page
    Then I ENTER valid details with DATA ChangePrivilages_Success
    Then I SUBMIT the form
    Then I am ON manageAdmins page
    When I PERFORM logOut action
    Then I am ON home page
    When I CLICK login link
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    When I PERFORM ifLoggedInAsJobAdmin
    Then I am ON dashboard page

 Scenario: To change the privilages of the Job Admin and verify that the privilages are changed to Trainer Admin  with DATA AddJobAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin button
    Then I am ON addAdmin page
    And I ENTER all the required fields with DATA AddJobAdmin_Success
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    When I PERFORM clickOnNewAdminChangePrivilage link
    Then I am ON changePrivilages page
    Then I ENTER valid details with DATA ChangePrivilage2Trainer_Success
    Then I SUBMIT the form
    Then I am ON manageAdmins page
    When I PERFORM logOut action
    Then I am ON home page
    When I CLICK login link
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    When I PERFORM ifLoggedInAsTrainer
    Then I am ON dashboard page
@Group(44)
Scenario: To change the privilages of the Job Admin  and verify that the privilages are changed to Sub Admin with DATA AddJobAdmin_Success
    Given I am ON dashboard page
    When I CLICK leftMenuButton link
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin button
    Then I am ON addAdmin page
    And I ENTER all the required fields with DATA AddJobAdmin_Success
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    When I PERFORM clickOnNewAdminChangePrivilage link
    Then I am ON changePrivilages page
    Then I ENTER valid details with DATA ChangePrivlageSubAdmin_Success
    Then I SUBMIT the form
    Then I am ON manageAdmins page
    When I PERFORM logOut action
    Then I am ON home page
    When I CLICK login link
    Then I am ON login page
    When I PERFORM loginAsAnAdmin
    Then I am ON changePassword page
    And I ENTER valid password details with DATA ChangePassword_Success
    Then I SUBMIT the form
    And I am ON dashboard page
    When I PERFORM ifLoggedInAsSubAdmin
    Then I am ON dashboard page

  @Group(ManageAdmins)
  Scenario: To Verify the success scenario of adding an admin in 'Manage Admins' page with DATA AddAdmin_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    And newly created admin is displayed in the admins list

  Scenario: To Verify the success scenario of adding multiple admins in 'Manage Admins' page with DATA AddAdmin_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    And I CLICK addAnotherAdmin link
    And I CLICK saveToAddAnotherAdmin button
    Then I am ON addAdmin page
    And I ENTER the required inputs with DATA AddAnotherAdmin_Success
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created in a single page
    And I VERIFY addedAdminDisplayed
    Then I am ON manageAdmins page
    And newly created admin is displayed in the admins list

  Scenario: To remove an added admin and verify that admin has been removed from the list  in 'Manage Admins' page with DATA AddAdmin_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created
    When I PERFORM removeAnAdmin action, which removes an admin from the admins list
    Then I am ON manageAdmins page
    And I VERIFY isAdminRemoved
    Then I am ON manageAdmins page
    And added admin has been removed from the admins list

@Group(20)
  Scenario: Remove an admin from 'Manage Admins' page and Verify that user can not login to the application with DATA AddAdmin_Success
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the required fields
    When I SUBMIT the form
    Then I am ON manageAdmins page
    And I CLICK lastOfItemsPerPage link which displays all the admins created
    When I PERFORM removeAnAdmin action to remove an admin from the admins list
    Then I am ON manageAdmins page
    Then I CLICK dashbreadcrumb
    And I am ON dashboard page
    And I PERFORM logOut action to logout from the application
    Then I am ON home page
    And I CLICK loginFromHome
    Then I am ON login page
    And I PERFORM loginAsAnAdmin action to check whether removed admin still able to login to the application
    Then I am ON login page
    And user is unable to login to the application with removed admin's credentials

Scenario: To Verify all the failure scenarios while adding an admin in 'Manage Admins' page with DATA AddAdmin_Failure
    Given I am ON dashboard page
    And I CLICK leftMenuButton
    And I CLICK manageAdmins link
    Then I am ON manageAdmins page
    When I CLICK addAdmin link
    Then I am ON addAdmin page
    And I ENTER all the invalid inputs
    When I SUBMIT the form
    Then I am ON addAdmin page
    And error messages are displayed