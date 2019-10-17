# Bamazon
This is an Amazon-like storefront with that uses Node.js command line and MySQL database to take in orders from customers and deplete stock from the store's inventory. The bonus of this assignment includes creating a Manager and a Supervisor view with additional/different functionalities. _I did not complete the additional views._

#Installation
1. Clone the repository to yoru local machine
2. Install NPM packages: 
 *mysql 
 *inquirer 
 *dotenv 

You'll know this is ready when you see these on your node modules file
3. Open schema.sql via VS Code and copy paste the code into MySQL
4. customer.js:
 *Open up terminal
 *Go to your local repo folder
 *In the terminal enter node customer.js
You shoudl see if you are connected as id in your terminal window to indicate successful connection to MySQL
	connection.connect(function(err) {
	  if (err) throw err;
	  console.log("connected as id " + connection.threadId); 
	  purchase();
	});
 *Enter the Item Id of the product you wish to purchase (refer to the table)
 *Enter the quantity of products you wish to buy 
 *Next either your purchase total or an alert of insufficient inventory will display
 *After each purchase, you can choose to continue or exit by using the up and down arrow keys on your keyboard (exit early with ctrl + c)
 *If you select no, the connection ends.