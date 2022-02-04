# GraphQL Presentation

## Resources

To download a GraphQL schema:

```schema
npx get-graphql-schema https://swapi-graphql.netlify.app/.netlify/functions/index > swapi.graphql
```

NOTE: it might suggest using graphql-cli, but it did _not_ work. The docs have
all changed recently and it fails with [this
issue](https://github.com/Urigo/graphql-cli/issues/1807).
