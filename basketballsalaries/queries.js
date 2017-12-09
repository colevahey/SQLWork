let pg = require('pg')
let graphql = require('graphql');

let teamname = "Chicago Bulls"

console.log("Your team is the " + teamname)

var test = function() {
  let pool = new pg.Pool()

  pool.connect()
  pool.query('SELECT * FROM salaries where team = \'' + teamname + '\'', (err, res) => {
    if (err) {
      throw err
    }

    console.log('Chicago Bulls:', res.rows)
  })
}

test()
