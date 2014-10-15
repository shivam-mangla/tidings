<?php

	include 'connect.php';
	/* Template call when function to be called is passed as a parameter 'function_required' in POST request 
	// TODO: Change to switch-case
	 if($_POST['function_required'] === FunctionNames.FUNCTIONNAME) {
		echo function_name($_POST['parameters']);
	}*/

	$RECENT_NEWS = 1;

	//ar_dump($_GET);
	
	if($_GET["function"] == $RECENT_NEWS) {
		// echo "Hello world";
		echo read_recent_news();
	}
	
	// Template function
	function read_all_news(){
		return mysql_query("SELECT * FROM `news`") or die (mysql_error());
	}
	
	function read_recent_news() {
		$datetime = $_GET['date']." ".$_GET['time'];

		$query = 
			"SELECT headline,source_link 
			 FROM (
				SELECT news_id 
				FROM posts
				WHERE start_datetime <= '". $datetime 
					."' AND '".
					$datetime ."' <= `end_datetime`
				ORDER BY start_datetime DESC
			) AS recentposts STRAIGHT_JOIN news 
			ON recentposts.news_id = news.news_id";
			
		$result = mysql_query($query) or die($query."<br/><br/>".mysql_error());
		$rows = array();
		while($r = mysql_fetch_assoc($result)) {
			$rows[] = $r;
		}
		return json_encode($rows);
	}
?>
