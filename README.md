# Subgraph: `Satoshi Gaming Group`

> Transactions, Decoded Actions & Database Operations

- [x] **Blocks**
- [x] **Transactions**
- [x] **Actions**
  - [x] **Authorization**
  - [x] **Receiver**
- [x] **DatabaseOperations**

## Smart Contracts

- `txtprotocol1`
- `txtprotocol2`

## Subgraph

- **API Key**: https://thegraph.com/studio/apikeys/
- **Base URL**: https://gateway.thegraph.com/api
- **Subgraph ID**: [`2s2nR9EC2j1jHJRZHJhLWq5Rm9SZTWawWfA9ec4vX9hn`](https://thegraph.com/explorer/subgraphs/2s2nR9EC2j1jHJRZHJhLWq5Rm9SZTWawWfA9ec4vX9hn?view=Query&chain=arbitrum-one)
- **Query URL format**: `{base_url}`/api/`{api-key}`/subgraphs/id/`{subgraph_id}`

## GraphQL

```graphql
{
  actions(
    orderBy: block__number
    orderDirection: desc
  ) {
    block{
      number
      time
    }
    transaction {
      id
    }
    account
    name
    jsonData
    dbOps {
      code
      tableName
      primaryKey
      newDataJson
    }
  }
}
```
