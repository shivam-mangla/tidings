<?php

	/* Template call when function to be called is passed as a parameter 'function_required' in POST request 
	// TODO: Change to switch-case
	 if($_POST['function_required'] === FunctionNames.FUNCTIONNAME) {
		echo function_name($_POST['parameters']);
	}*/

	// Template function
	function read_all_news(){
		return mysql_query("SELECT * FROM `news`") or die (mysql_error());
	}
?>
