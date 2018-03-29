// dependencies
// ----------------------------------------------------------------------
const sc_interaction  = require("./sc_interaction");

module.exports = {


	// async test
	// ----------
	main: async function () {
		console.log("--> before async call\n");   
		var url = "http://localhost:8000/trade1"; 
		var res = await sc_interaction.asyncReq(url);
		console.log("\n--> async value: \n" + res);
		console.log("\n\n--> after async call");  
	}


	// web3 controler
	// --------------

	

}

