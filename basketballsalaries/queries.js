let pg = require('pg')

let teamname = "Charlotte Hornets"

let teamrank = function() {
  let pool = new pg.Pool()

  pool.connect()

  pool.query('SELECT team FROM salaries', (err, res) => {
    if (err) {
      throw err
    }
    teams = []
    for (i=0;i<res.rows.length;i++){
      teamselected = res.rows[i].team
      for (i=0;i<teams.length;i++) {
        if (teams[i] == teamselected) {
          teams.splice(i,1)
        } else {
          console.log("this is not working sheesh")
        }
      }
      teams.push(teamselected)
    }
    console.log(teams)
  })

  pool.query('SELECT * FROM salaries where team = \'' + teamname + '\'', (err, res) => {
    if (err) {
      throw err
    }

    for (i=0;i<res.rows.length;i++){
      console.log(res.rows[i].player + ":",res.rows[i].salary)
    }
  })
}

teamrank()
