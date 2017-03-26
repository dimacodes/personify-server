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

GET - /v1/people - see all people - parameters: none
<br></br>
POST - /v1/people - create person - parameters: name: string, favoriteCity: string
<br></br>
GET - /v1/people/:id - see person - parameters: id
<br></br>
PUT - /v1/people/:id - modify person - parameters: name: string, favoriteCity: string
<br></br>
DELETE - /v1/people/:id - delete person - parameters: id

Example

GET request to /v1/people/1 returns a person's id, name, and favorite city:

{"id": 1, "name": "Sean", "favoriteCity": "New York"}


Responses

- All data is delivered as a JSON object


Authentication

- Personify API is available for public consumption, no authentication token needed


Please visit http://personify-client.herokuapp.com/ to see the Personify API in action
