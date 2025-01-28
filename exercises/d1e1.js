import express from 'express'

const app = express()
app.set('view engine', 'ejs')

// TODO: Configure the app to serve static files from 'exercises/public'
app.use(express.static("exercises/public"))

export default app
