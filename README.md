# Subgraph: `Satoshi Gaming Group`

> Transactions, Decoded Actions & Database Operations

- [x] **Blocks**
- [x] **Transactions**
  - [x] **DatabaseOperations**
- [x] **Actions**
  - [x] **Authorization**
  - [x] **Receiver**

## Smart Contracts

- `txtprotocol1`
- `txtprotocol2`

## Subgraph

- **API Key**: <https://thegraph.com/studio/apikeys/>
- **Base URL**: <https://gateway.thegraph.com/api>
- **Subgraph ID**: [`2s2nR9EC2j1jHJRZHJhLWq5Rm9SZTWawWfA9ec4vX9hn`](https://thegraph.com/explorer/subgraphs/2s2nR9EC2j1jHJRZHJhLWq5Rm9SZTWawWfA9ec4vX9hn?view=Query&chain=arbitrum-one)
- **Subgraph NFT**: [`12517658201633719642278347815944635152155911847762350617155529067133237037437`](https://arbiscan.io/nft/0x3fbd54f0cc17b7ae649008deea12ed7d2622b23f/12517658201633719642278347815944635152155911847762350617155529067133237037437)
- **Query URL format**: `{base_url}`/api/`{api-key}`/subgraphs/id/`{subgraph_id}`

## GraphQL

```graphql
{
  actions(
    orderBy: block_number
    orderDirection: desc
  ) {
    block_number
    timestamp
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
