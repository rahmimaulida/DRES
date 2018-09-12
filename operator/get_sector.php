<?php
include ('../config.php');
$data=$_POST['data'];

$qry="SELECT * FROM tbl_users where sector = '$data' GROUP BY sector";
$result = mysql_query($qry);

while( $ret = mysql_fetch_array( $result ) )
{
	echo "<option value='".$ret['name']."'>".$ret['name']."</option>";

}
?>
