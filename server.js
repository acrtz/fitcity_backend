const postgraphile = require('postgraphile');
const express = require('express');

const app = express();

app.use(postgraphile(
  process.env.DATABASE_URL,
  'public',
  { graphiql: true} 
));

app.listen(process.env.PORT, function(){
  console.log('Sever is listening.');
});