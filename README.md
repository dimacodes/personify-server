# Personify API


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


API Reference

- Resources can be accessed via standard HTTP requests
- Parameters are required for most requests

GET       /v1/people        to    See all people     params: *
POST      /v1/people        to    Create person      params: name: string, favoriteCity: string
GET       /v1/people/:id    to    See person         params: id: integer
PUT       /v1/people/:id    to    Modify person	     params: name: string, favoriteCity: string
DELETE    /v1/people/:id    to    Delete person      params: id: integer

Example

GET request to /v1/people/1 returns a person's id, name, and favorite city:
{"id": 1, "name": "Sean", "favoriteCity": "New York"}


Responses

- All data is delivered as a JSON object


Authentication

- Personify API is available for public consumption, no authentication token needed


Please visit http://personify-client.herokuapp.com/ to see the Personify API in action
