console.log("in sc_interaction!"); 

module.exports = {

    asyncReq: function(url) {
        var request = require("request");
        return new Promise(function (resolve, reject) {
            request(url, function (error, res, body) {
                if (!error && res.statusCode == 200) {
                    resolve(body);
                } else {
                    reject(error);
                }
            });
        });
    }

}



