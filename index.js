const express = require('express')
const app = express()
const port = 3000

app.use(express.static('html'))
app.use("/", express.static('./css/'));
app.use("/favicon.svg", express.static('./favicon.svg'));


app.listen(port, () => {
  console.log(`Example app listening at https://localhost:${port}`)
})