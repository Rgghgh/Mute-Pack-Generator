<?php

class Database
{
	const SERVER_NAME = "************"; // 'localhost'
	const DATABASE_NAME = "***********"; // 'mpg'
	const USERNAME = "***********"; // 'root'
	const PASSWORD = "***********"; // ''
	private $conn;
	private static $tables = array (
			'stats' => "id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						sound VARCHAR(20) NOT NULL,
						sub VARCHAR(20) NOT NULL,
						file VARCHAR(500) NOT NULL UNIQUE,
						count INT(16) NOT NULL DEFAULT 0",
			'users' => "id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						username VARCHAR(16) NOT NULL DEFAULT '',
						email VARCHAR(254) NOT NULL UNIQUE KEY,
						password VARCHAR(32) NOT NULL,
						last VARCHAR(8) NOT NULL,
						token VARCHAR(32) NOT NULL DEFAULT '',
						extra LONGTEXT NOT NULL"
	);

	function __construct() {
		$this->conn = new mysqli(Database::SERVER_NAME, Database::USERNAME, Database::PASSWORD, Database::DATABASE_NAME);
		if ($this->conn->connect_error) {
			$error = $this->conn->connect_error;
			return false;
		}
		
		$sql = "CREATE TABLE IF NOT EXISTS stats (" . Database::$tables ['stats'] . ");";
		if ($this->conn->query($sql) === FALSE)
			die("Error creating table: " . $this->conn->error . "</br>");
		
		$sql = "CREATE TABLE IF NOT EXISTS users (" . Database::$tables ['users'] . ");";
		if ($this->conn->query($sql) === FALSE)
			die("Error creating table: " . $this->conn->error . "</br>");
		
		$sql = "SELECT COUNT(*) AS 'C' FROM stats;";
		$result = mysqli_fetch_assoc($this->conn->query($sql));
		if ($result ['C'] == 0)
			Database::insertIntoStats($this->conn);
		return true;
	}

	public function query($sql) {
		return $this->conn->query($sql);
	}

	public function updateStats($files) {
		$sql = "UPDATE stats SET count=count+1 WHERE file='total';";
		$this->conn->query($sql);
		
		$stmt = $this->conn->prepare("UPDATE stats SET count=count+1 WHERE file=?;");
		$stmt->bind_param("s", $file);
		
		foreach ($files as $file)
			$stmt->execute();
		
		$stmt->close();
	}

	# USER MANAGMENT
	
	public function findUser($email) {
		$stmt = $this->conn->prepare("SELECT * FROM users WHERE email=?;");
		$stmt->bind_param("s", $email);
		$res = $stmt->execute();
		$stmt->close();
		print_r($res);
	}
	
	public function getUser($email, $password) {
		$stmt = $this->conn->prepare("SELECT * FROM users WHERE email=? AND password=?;");
		$stmt->bind_param("ss", $email, $password);
		$password = md5($password);
		$res = $stmt->execute();
		$stmt->close();
		if($res->num_rows <= 0)
			return false;
		return $res;
	}

	public function setUser($email, $password, $username) {
		$stmt = $this->conn->prepare("INSERT INTO users (email,password,username,last,extra) VALUES (?, ?, ?, ?, ?)");
		$stmt->bind_param("sssss", $email, $password, $username, $last, $extra);
		$password = md5($password);
		$last = date('d') . '/' . date('m') . '/' . date('y');
		$extra = '[]';
		$stmt->execute();
		$stmt->close();
	}
	
	# /USER MANAGMENT

	public function end() {
		$this->conn->close();
	}

	private static function insertIntoStats($conn) {
		$filename = 'options.xml';
		$sql = "INSERT INTO stats (sound, sub, file) VALUES ('total', 'total', 'total')";
		$xml = simplexml_load_file($filename);
		
		foreach ($xml->xpath('//option') as $option) {
			$sound = $option ['name'];
			foreach ($option->children() as $sub) {
				$sql = $sql . ', ("' . $sound . '","' . $sub ['name'] . '", "' . $sub ['value'] . '")';
			}
		}
		
		$conn->query($sql);
	}
}

?>