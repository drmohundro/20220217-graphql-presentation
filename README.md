# GraphQL Presentation

## Running Hasura

```sh
docker-compose up -d
```

## Configuring Hasura

- Pull up <http://localhost:8080/console>.
- Connect to the database using the connection string: `postgres://testuser:password@host.docker.internal:5432/sakila`
- Choose which items to track or all items

## Running Queries

- Go to the API tab

## Sample GraphQL Queries

```graphql
query {
  actor {
    first_name
    last_name
  }
}
```

## Resources

To download a GraphQL schema:

```schema
npx get-graphql-schema https://swapi-graphql.netlify.app/.netlify/functions/index > swapi.graphql
```

NOTE: it might suggest using graphql-cli, but it did _not_ work. The docs have
all changed recently and it fails with [this
issue](https://github.com/Urigo/graphql-cli/issues/1807).
