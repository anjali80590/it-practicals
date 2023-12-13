var http = require('http');

http.createServer((request,response)=>{
	response.write("Hello World, This is my Node.js server");
	response.end();
})
.listen(11000,()=>console.log('http://localhost:11000'));