# PERSONIFY API


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
- The home address of the API is http://personify-server.herokuapp.com/api
- Several unique endpoints exist at that address


API Reference

- Resources can be accessed via standard HTTP requests

METHOD           ENDPOINT                   USAGE               RETURNS          PARAMETERS  

GET             /v1/people              See all people	         people               *
POST	          /v1/people              Create person              *       name: string, favoriteCity: string
GET             /v1/people/:id            See person             person          id: integer
PUT             /v1/people/:id          Modify person	           person    name: string, favoriteCity: string
DELETE          /v1/people/:id          Delete person 	           *             id: integer

Example

GET request to /v1/people/1 returns a person's id, name, and favorite city:
{"id": 1, "name": "Sean", "favoriteCity": "New York"}


Responses

- All data is delivered as a JSON object


Authentication

- Personify API is available for public consumption, no authentication token needed


* Please visit http://personify-client.herokuapp.com/ to see the Personify API in action
