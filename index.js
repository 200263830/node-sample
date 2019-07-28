const express = require('express')
const os  = require('os')
var PORT =  process.env.PORT||80
const app  = express();

var json = {
    pod_id: os.hostname(),
    msg: 'Hello from v1 version of application' 
}

app.get("/" ,  (req,res) => {
     res.json(json);
})

app.listen(PORT, () => {
    console.log('App listening on port 80!');
});