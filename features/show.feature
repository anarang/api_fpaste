Feature: To be able to use the API endpoints of fpaste.org

	Scenario: To verify that the API endpoint 'show' gives accurate results
	When I GET '/show' for id: XXXX
	Then the response should be 200 OK
	And I should be able to get details including Author and data

	