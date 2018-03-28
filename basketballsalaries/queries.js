let pg = require('pg')
let prompt = require('prompt')

let teams = [
  'Charlotte Hornets',
  'Memphis Grizzlies',
  'Los Angeles Lakers',
  'LA Clippers',
  'Sacramento Kings',
  'Chicago Bulls',
  'Milwaukee Bucks',
  'New York Knicks',
  'Brooklyn Nets',
  'Atlanta Hawks',
  'Houston Rockets',
  'Oklahoma City Thunder',
  'Cleveland Cavaliers',
  'Golden State Warriors',
  'Phoenix Suns',
  'Dallas Mavericks',
  'Orlando Magic',
  'Boston Celtics',
  'Detroit Pistons',
  'Washington Wizards',
  'San Antonio Spurs',
  'Toronto Raptors',
  'Minnesota Timberwolves',
  'Utah Jazz',
  'Miami Heat',
  'Philadelphia 76ers',
  'Portland Trail Blazers',
  'Indiana Pacers',
  'Denver Nuggets',
  'New Orleans Pelicans'
]

let randomTeamSalaries = function() {
  let pool = new pg.Pool()
  let teamname = teams[Math.floor(Math.random()*teams.length)]

  console.log("Your team is the",teamname+"!")

  pool.connect()

  pool.query('SELECT * FROM salaries WHERE team = \'' + teamname + '\'', (err, res) => {
    for (i=0;i<res.rows.length;i++){
      console.log(res.rows[i].player + ":",res.rows[i].salary)
    }
  })
}

let selectPlayerSalary = function(){
  let pool = new pg.Pool()
  prompt.start()
  prompt.get(['playerName'], function(err,res) {

    player = res.playerName.toLowerCase().split('')
    for (i=0;i<player.length;i++){
      if (player[i-1] == ' ' || i==0){
        player[i] = player[i].toUpperCase()
      }
    }
    player = player.join('')

    pool.connect()
    pool.query('SELECT * FROM salaries WHERE player = \'' + player + '\'', (err, res) => {
      console.log(player, "made", res.rows[0]['salary'], "playing for the", res.rows[0]['team'], "in 2015")
      pool.query('SELECT * FROM salaries WHERE team = \'' + res.rows[0]['team'] + '\'', (err,res) => {
        console.log("That year,", res.rows[0]['player'], "was the highest paid player for the", res.rows[0]['team'], "at", res.rows[0]['salary'])
      })
    })
  })
}

selectPlayerSalary()
randomTeamSalaries()
