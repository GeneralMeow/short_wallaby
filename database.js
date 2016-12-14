'use strict';
const databaseName = 'short_wallaby_library'
const connectionString = process.env.DATABASE_URL || `postgres://${process.env.USER}@localhost:5432/${databaseName}`
const pgp = require('pg-promise')()
const database = pgp(connectionString)





module.exports = {

}
