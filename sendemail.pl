#/////////////Send the e-mail///////////////
$Name = $ARGV[0];#User of the Sender;
$Email = $ARGV[1];#Email of the Sender;
$Telephone = $ARGV[2]; #Sender's phone number;
$Subject = $ARGV[3];#Email of the Sender;
$Message = $ARGV[4];#Email body;
$reply_to = $Email;

use MIME::Lite;

$to = "cyla.mw\@gmail.com";
$cc = "kalumbec\@gmail.com";

# send email
 	email($to, $Email, $Subject, $Message);
	# email function
 	sub email
 	{
	# get incoming parameters
	local ($to, $Email, $Subject, $Message) = @_;
	# create a new message
	 $msg = MIME::Lite->new(
 	'Reply-to' =>$reply_to,
	 From => $Email,
  	 To => $to,
 	 'Cc' => $cc,
	 Subject => $Subject,
 	 Data => $Message
	);
	
 	# send the email
 	MIME::Lite->send('smtp', 'kalata1.sdnp.org.mw', Timeout => 60);
 	$msg->send();
	}