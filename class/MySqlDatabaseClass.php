<?php
	//het config.php bestand word ingesloten in het bestand MySqlDatabaseClass.php
	//zodat we gebruik kunnen maken van de daar gedefinieerde constanten
	require_once('config/config.php');

	//Dit is de class definitie van de MySqlDatabaseClass
	class MySqlDatabaseClass
	{
		//fields
		private $db_connection;
		
		//constructor in php heeft altijd de zelfde naam __construct
		public function __construct()
		
	{
		// maakt contact met de mysql-server
		$this->db_connection = mysql_connect(SERVERNAME, USERNAME, PASSWORD);
		
		//sellecteer een database
		mysql_select_db(DATABASENAME, $this->db_connection)
		 or die('MysqlDatabaseClass:  '.mysql_error());
	}
	
	// dit is een method(function binnen een class) die sql-queries kan afvuren 
	//op de database. het resultaat word dan terug gegeven door de method
	public function fire_query($query)
	{
		// stuurt de query dei meegegeven is als agrument van de functie fire_query
		// naar de database
		$result = mysql_query($query, $this->db_connection)
			or die('MySqlDatabaseClass:' .mysql_error());
		return $result;
	}
}

	//maak nu een object (instantie) van de MySqlDatabaseClass
	$database = new MySqlDatabaseClass();
	echo "Dit is de testpagina voor mijn database class";
	
	// we gaan alle records uit de tabel users selecteren
	
	$query = "SELECT * FROM `users`";
	$result = $database->fire_query($query);
	while ($row = mysql_fetch_array($result));
	{
		echo $row['firstname']."<br>";
	}
	
	
?>