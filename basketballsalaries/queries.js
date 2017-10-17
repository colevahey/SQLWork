const pg = require('pg')
const { graphql, buildSchema } = require('graphql');

const pool = new pg.Pool()

pool.connect()

pool.query('SELECT * FROM salaries', (err, res) => {
  if (err) {
    throw err
  }

  console.log('user:', res.rows)
  pool.end()
})

// Construct a schema, using GraphQL schema language
var schema = buildSchema(`
  type Query {
    hello: String
  }
`);

// The root provides a resolver function for each API endpoint
var root = {
  hello: () => {
    return 'Hello world!';
  },
};

// Run the GraphQL query '{ hello }' and print out the response
graphql(schema, '{ hello }', root).then((response) => {
  console.log(response);
});
