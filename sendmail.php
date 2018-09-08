<?php
$Name = $_POST['Name'];
$Email = $_POST['Email'];
$Telephone = $_POST['Telephone'];
$Subject = $_POST['Subject'];
$Message = $_POST['Message'];

shell_exec("perl sendemail.pl $Name $Email $Telephone $Subject $Message");

?>
		<script type="text/javascript">
            window.location.href="index.php";
		</script>
