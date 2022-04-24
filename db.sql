While (someCondition) {
// Specify the connection URL as per SQL server connection string.
        String connectionUrl = "jdbc:sqlserver://<YourServer>:<port>;databaseName=HevoMSSqlTest;user=<user>;password=<password>";

        try {
//LOAD the API driver 	
	Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
	
//Get a new Connection to SQL Server 
	Connection conn = DriverManager.getConnection(connectionUrl); 

// Create a statement object, this is the vehicle for carrying your SQL inserts				PreparedStatement stmt = conn.prepareStatement("INSERT into my_records" +" VALUES(?,?,?,?,?)");

// SET the values in your table columns 							
	stmt.setInt(1, 0);			
	stmt.setString(2, myString);					
	stmt.setString(3,myAddress);					
	stmt.setString(4, myName);					
	stmt.setString(5, myRole);

//EXECUTE the update 					
	stmt.executeUpdate();
	}// End of TRY block 
	
        catch (Exception e) {
        System.err.println("Error: ");
        e.printStackTrace(System.err); 
        }

	finally {
// CLOSE the Statement and Connection objects 
	stmt.close(); 
	conn.close();    	
	}
} // END of While loop 