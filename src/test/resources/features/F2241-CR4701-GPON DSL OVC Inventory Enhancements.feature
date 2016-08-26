Feature: F2241-GPON DSL OVC Inventory Enhancements

#US33620-Display GPON DSL OVCs Associated to Device
@TC18903_TC18905
   Scenario: Validate OLT Devices display MEF EVC for HSI
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab 
    And I searched for "OLT-MEF EVC"
    And I clicked on search button for "Inventory"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "Services" tab
    And validate the service type as "MEF EVC" when service capability types as "HSI" & "HSI + IPTV Unicast"
    Then Log out from OMNIVue
    
@TC18883_TC18902
   Scenario: Validate OLT Devices display DSL OVC for HSI
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab 
    And I searched for "OLT-DSL OVC"
    And I clicked on search button for "Inventory"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "Services" tab
    And validate the service type as "DSL OVC" when service capability types as "HSI" & "HSI + IPTV Unicast"
    Then Log out from OMNIVue

@TC19275 
  Scenario: Validate Refresh functionality of OLT Devices under Service tab
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab
    And I searched for "Refreshdata"
   	And I clicked on search button for "Inventory"
     And I clicked on view icon of search result page
     And I verified view page and clicked on "Services" tab
    #And I need to search for "Refreshdata"
    And I modify the service name from 77/L1XX/785391//ABCD to 77/L1XX/785391//CTQF
    When I do Refresh      
    Then I should see the updated Associated service name 
    Then Log out from OMNIVue
    
    #check the validation part is it fine line 57
@TC19068
Scenario: Validate OLT Devices with No service
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab 
    And I searched for "OLT-No Service"
    And I clicked on search button for "Inventory"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "Services" tab
    And validate the service type as "DSL OVC" when service capability types as "HSI" & "HSI + IPTV Unicast"
    Then Log out from OMNIVue
    
########################################################################################################################
#US31642-GPON SVLAN C Tag Pool Display, Create and Update and C Tag Status Display
  @US31642-TC20884 
  Scenario: Validate single range of C Tag pool 1-4095 for DSL OVC service with Ethernet-HSI usage type
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab 
    And I searched for "DSL OVC Data"
    And I clicked on search button for "Inventory"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "CTag" tab
    And Add the CTag range "Less than 1"
    And Add the CTag range "Greater than 4095"
    And Add the CTag range "Alphanumeric values"
    Then Add the CTag range "Single Range 1-4095" 
    And Log out from OMNIVue
     

	@US31642-TC20897-TC20901
  Scenario: Validate C Tag Pool multiple ranges can be edited on a non activated subscribers or Pending orders
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab
    And I searched for "DSL OVC Data"
    And I clicked on search button for "Inventory"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "CTag" tab
    And Add the CTag range "Multiple Range between 1-4095" 
    Then Add the CTag range "Overlapping the CTag range"
    And Log out from OMNIVue
    

    @US31642-TC20902
    Scenario: Validate C Tag Pool support single number range for DSL OVC service
    Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab
    And I searched for "DSL OVC Data"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "CTag" tab
    Then Add the CTag range "Single Number Range" 
    And Log out from OMNIVue
 
		@US31642-TC21874
  	Scenario: Modifying the existing CTag Pool range values for DSL OVC of any service
  	Given I am in omnivue url
    And I log in as a "Admin" user
    #And I goto Activation Page
    And I clicked on "Search" tab
    And I searched for "DSL OVC Data"
    And I clicked on view icon of search result page
    And I verified view page and clicked on "CTag" tab
    Then Add the CTag range "Modify the Ctag Range" 
    And Log out from OMNIVue