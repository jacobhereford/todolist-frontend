#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
--header "Content-Type: application/json" \
--data '{
  "credentials": {
    "email": "jeff@jeff.com",
    "password": "abc123"
  }
}'

curl --include --request POST http://localhost:3000/chores \
--header "Authorization: Token token=BAhJIiU0NWY0MzQ3ZGVhNmY1ODFiODFmNjc1ODk0MDBlMWQyOAY6BkVG--2ed25c7a1b344a67c40dec88b3fd866f0ee975ab" \
--header "Content-Type: application/json" \
--data '{
  "chore": {
    "title": "Buy Groceries",
    "where": "The Store",
    "when": "This Weekend",
    "user_id": 5
  }
}'
