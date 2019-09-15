var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
 // Port; if not 3306
    port: 3306,

 // Username
    user: "root",

 // Password & database
    password: "Jaxon3422",
    database: "bamazonDB"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    loadProducts();
  });

function loadProducts() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.log(res);
    //   connection.end();
    });
}


  // function which prompts the user for the item ID
function promptCustomer() {
    inquirer
      .prompt({
        name: "ItemID",
        type: "input",
        message: "What is the ID of the item you would like to purchase?",
      });

    inquirer
      .prompt([
        {
          name: "ID",
          type: "rawlist",
          choices: function() {
            var choiceArray = [];
            for (var i = 0; i < results.length; i++) {
              choiceArray.push(results[i].item_id);
            }
            return choiceArray;
          },
          message: "How many would you like to purchase?"
        },
        
      ])
      .then(function(answer) {
        // get the information of the chosen item
        var chosenItem;
        for (var i = 0; i < results.length; i++) {
          if (results[i].item_name === answer.choice) {
            chosenItem = results[i];
          }
        }
  }
}