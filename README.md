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

GET&nbsp;&nbsp;&nbsp;/v1/people&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;see all people&nbsp;&nbsp;&nbsp;params:&nbsp;&nbsp;&nbsp; *
<br></br>
POST&nbsp;&nbsp;&nbsp;/v1/people&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;create person&nbsp;&nbsp;&nbsp;params:&nbsp;&nbsp;&nbsp; name: string, favoriteCity: string
<br></br>
GET&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;see person&nbsp;&nbsp;&nbsp;params:&nbsp;&nbsp;&nbsp; id: integer
<br></br>
PUT&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;modify person&nbsp;&nbsp;&nbsp;params:&nbsp;&nbsp;&nbsp; name: string, favoriteCity: string
<br></br>
DELETE&nbsp;&nbsp;&nbsp;/v1/people/:id&nbsp;&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;delete person&nbsp;&nbsp;&nbsp;params:&nbsp;&nbsp;&nbsp; id: integer

Example

GET request to /v1/people/1 returns a person's id, name, and favorite city:

{"id": 1, "name": "Sean", "favoriteCity": "New York"}


Responses

- All data is delivered as a JSON object


Authentication

- Personify API is available for public consumption, no authentication token needed


Please visit http://personify-client.herokuapp.com/ to see the Personify API in action
