Feature: Petstore Api Test

Background:
* url apiURL


Scenario: 1 Add a new pet to the store

Given url apiURL
And path 'pet'
And request {"id": 1993,"category": {"id": 0,"name": "dog"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "yellow"},{"id": 1,"name": "red"}],"status": "available"}
When method POST
Then status 200

Scenario: 2 Check Pet

Given url apiURL
And path 'pet/1993'
When method GET
Then status 200

Scenario: 3 Update Pet

Given url apiURL
And path 'pet'
And request {"id": 1999,"category": {"id": 0,"name": "dog"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "yellow"},{"id": 1,"name": "red"}],"status": "available"}
When method PUT
Then status 200

Scenario: 4 Check Pet

Given url apiURL
And path 'pet/1999'
When method GET
Then status 200

Scenario: 5 Delete Pet

Given url apiURL
And path 'pet/1999'
When method DELETE
Then status 200

Scenario: 6 Check none exist Pet

Given url apiURL
And path 'pet/1999'
When method GET
Then status 404

