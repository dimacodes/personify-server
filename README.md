# Personify. API


About

- Scalable API-only Rails application
- Developed utilizing TDD, responses thoroughly tested
- REST-compliant
- Allows cross-origin resource sharing
- Configured for token-based authentication
- Includes versioning, current version is 1.0
- Serves JSON


Getting started

- The Personify API allows access to a directory of peoples' names and their favorite cities
- The home address of the API is http://personify-server.herokuapp.com
- Several unique endpoints exist at that address


Reference

- Resources can be accessed via standard HTTP requests
- Parameters are required for most requests

GET&nbsp;&nbsp;&nbsp;/v1/people&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;See all people&nbsp;&nbsp;&nbsp;params: *
POST&nbsp;&nbsp;&nbsp;/v1/people&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;Create person&nbsp;&nbsp;&nbsp;params: name: string, favoriteCity: string
GET&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;See person&nbsp;&nbsp;&nbsp;params: id: integer
PUT&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;Modify person&nbsp;&nbsp;&nbsp;params: name: string, favoriteCity: string
DELETE&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;Delete person&nbsp;&nbsp;&nbsp;params: id: integer

Example

GET request to /v1/people/1 returns a person's id, name, and favorite city:

{"id": 1, "name": "Sean", "favoriteCity": "New York"}


Responses

- All data is delivered as a JSON object


Authentication

- Personify API is available for public consumption, no authentication token needed


Please visit http://personify-client.herokuapp.com/ to see the Personify API in action
