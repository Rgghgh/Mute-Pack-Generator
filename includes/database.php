<?php

class Database
{
    const SERVER_NAME = "localhost"; // 'localhost'
    const DATABASE_NAME = "mpg"; // 'mpg'
    const USERNAME = "root"; // 'root'
    const PASSWORD = ""; // ''
    private $conn;
    private static $tables = array(
        'stats' => "id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						sound VARCHAR(20) NOT NULL,
						sub VARCHAR(20) NOT NULL,
						file VARCHAR(500) NOT NULL UNIQUE,
						count BIGINT(20) NOT NULL DEFAULT 0",
        'milestones' => "milestone BIGINT(20) NOT NULL UNIQUE PRIMARY KEY,
						time DATETIME DEFAULT NULL,
						name LONGTEXT DEFAULT NULL",
        'contact' => "id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						name VARCHAR(255),
						type VARCHAR(10),
						email VARCHAR(255),
						content TEXT,
						time DATETIME"
    );

    function __construct()
    {
        $this->conn = new mysqli(Database::SERVER_NAME, Database::USERNAME, Database::PASSWORD, Database::DATABASE_NAME);
        if ($this->conn->connect_error) {
            $error = $this->conn->connect_error;
            return false;
        }

        $sql = "CREATE TABLE IF NOT EXISTS stats (" . Database::$tables ['stats'] . ");";
        if ($this->conn->query($sql) === FALSE)
            die("Error creating table: " . $this->conn->error . "</br>");

        $sql = "CREATE TABLE IF NOT EXISTS milestones (" . Database::$tables ['milestones'] . ");";
        if ($this->conn->query($sql) === FALSE)
            die("Error creating table: " . $this->conn->error . "</br>");

	    $sql = "CREATE TABLE IF NOT EXISTS contact (" . Database::$tables ['contact'] . ");";
	    if ($this->conn->query($sql) === FALSE)
		    die("Error creating table: " . $this->conn->error . "</br>");

        $sql = "SELECT COUNT(*) AS 'C' FROM stats;";
        $result = mysqli_fetch_assoc($this->conn->query($sql));
        if ($result ['C'] == 0)
            Database::insertIntoStats($this->conn);
        return true;
    }

    public function query($sql)
    {
        return $this->conn->query($sql);
    }

    public function updateStats($files)
    {
        $sql = "UPDATE stats SET count=count+1 WHERE file='total';";
        $this->conn->query($sql);

        $stmt = $this->conn->prepare("UPDATE stats SET count=count+1 WHERE file=?;");
        $stmt->bind_param("s", $file);

        foreach ($files as $file)
            $stmt->execute();

        $stmt->close();
    }

    public function checkMilestone()
    {
        $sql = "SELECT milestone FROM milestones WHERE time IS NULL AND milestone=(SELECT count FROM stats WHERE file='total' LIMIT 1)";
        $result = $this->conn->query($sql);
        if ($result !== 0)
            return $result->fetch_row()[0];
        return false;
    }

    public function setMilestone($milestone, $name)
    {
        $sql = "UPDATE milestones SET time=NOW(),name=? WHERE milestone=? LIMIT 1;";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("si", $name, $milestone);
        $stmt->execute();
        $stmt->close();
    }

    public function contactMessage($name, $type, $email, $content)
    {
	    $sql = "INSERT INTO contact (name, type, email, content, time) VALUES (?, ?, ?, ?, NOW())";
	    $stmt = $this->conn->prepare($sql);
	    $stmt->bind_param("ssss", $name, $type, $email, $content);
	    $stmt->execute();
	    $stmt->close();
    }

    public function end()
    {
        $this->conn->close();
    }

    private static function insertIntoStats($conn)
    {
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