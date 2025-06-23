<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $name    = htmlspecialchars($_POST["name"]);
    $email   = htmlspecialchars($_POST["email"]);
    $message = htmlspecialchars($_POST["message"]);

    
    $to      = "your-email@example.com";  
    $subject = "New Contact Form Submission";
    $body    = "Name: $name\nEmail: $email\nMessage:\n$message";
    $headers = "From: $email";

    @mail($to, $subject, $body, $headers);  

    $log_entry = "[$name | $email] " . date("Y-m-d H:i:s") . "\n$message\n\n";
    file_put_contents("messages.txt", $log_entry, FILE_APPEND);

   
    $host = 'localhost';
    $user = 'root';     
    $pass = '';    
    $db   = 'online_book_store_db';     

    $conn = new mysqli($host, $user, $pass, $db);
    if ($conn->connect_error) {
        die("DB connection failed: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("INSERT INTO messages (name, email, message) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $name, $email, $message);
    $stmt->execute();
    $stmt->close();
    $conn->close();

    
    header("Location: thankyou.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact Us</title>
  <link rel="stylesheet" href="styles.css">
 <style>
    body {
            margin: 0;
            padding: 0;
            font-family:bold;
            background-image: url('img/bbokie.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
			text:white;
        }
        .contact-container {
    display: flex;
    flex-direction: column;
    width: 300px;
    padding: 20px;
    background-color: rgba(255,255,255,0.9);
    border-radius: 10px;
}

.contact-container form {
    display: flex;
    flex-direction: column;
}



.contact-container input,
.contact-container textarea {
    background-color: #f0f0f0; 
    border: none;
    padding: 10px;
    border-radius: 5px;
    color: #333;
}

.contact-container button {
    background-color: #4CAF50; 
    color: white;
    border: none;
    padding: 10px;
    border-radius: 5px;
    cursor: pointer;
}

.contact-container button:hover {
    background-color: #45a049;
}

 </style> 
</head>
<body>

  <div class="contact-container">
    <h2>Contact Us</h2>
    <form action="contact.php" method="POST">
      <label for="name">Name</label>
      <input type="text" name="name" id="name" required>

      <label for="email">Email</label>
      <input type="email" name="email" id="email" required>

      <label for="message">Message</label>
      <textarea name="message" id="message" rows="5" required></textarea>

      <button type="submit">Send Message</button>
    </form>
  </div>

</body>
</html>
