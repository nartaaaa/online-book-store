<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us - Online Reading Hub</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        header {
            background-color:rgb(250, 12, 12);
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .container {
            padding: 40px;
            max-width: 900px;
            margin: auto;
            background-color: white;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            color: #4a90e2;
        }
        p {
            line-height: 1.7;
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #ddd;
            margin-top: 40px;
        }
       .horizontal-slider {
    position: relative;
    max-width: 800px;
    margin: 40px auto;
    overflow: hidden;
}

.slider-container {
    display: flex;
    overflow-x: auto;
    scroll-behavior: smooth;
    scrollbar-width: none; /* Firefox */
}

.slider-container::-webkit-scrollbar {
    display: none; /* Chrome, Safari */
}

.slider-container img {
    flex: 0 0 auto;
    width: 250px;
    height: 150px;
    margin-right: 10px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0,0,0,0.2);
}

.slide-btn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0,0,0,0.5);
    color: white;
    border: none;
    padding: 12px;
    cursor: pointer;
    font-size: 24px;
    border-radius: 50%;
    z-index: 10;
}

.slide-btn.left {
    left: 5px;
}

.slide-btn.right {
    right: 5px;
}


    </style>
</head>
<body>
   <div class="horizontal-slider">
    <button class="slide-btn left" onclick="scrollSlider(-1)">&#10094;</button>
    
    <div class="slider-container" id="sliderContainer">
        <img src="img/slider1.jpg" alt="Book 1">
        <img src="img/slider2.jpg" alt="Book 2">
        <img src="img/slider3.jpg" alt="Book 3">
        <img src="img/slider4.jpg" alt="Book 4">
    </div>
    
    <button class="slide-btn right" onclick="scrollSlider(1)">&#10095;</button>
</div>
>
<header>
    <h1>About Us</h1>
</header>

<div class="container">
    <h2>Welcome to Online Reading Club</h2>
    <p>
        Online Reading Club is your one-stop destination for enjoying thousands of books from anywhere in the world. 
        Whether you're into fiction, non-fiction, educational material, or just casual reading, our platform is built to make reading convenient and enjoyable.
    </p>

    <h2>Our Mission</h2>
    <p>
        Our mission is to promote reading by providing free and easy access to a large collection of books across various genres. 
        We believe knowledge should be accessible to everyone, and our platform is tailored to support students, educators, and book lovers alike.
    </p>

    <h2>What We Offer</h2>
    <ul>
        <li>✔ A wide range of books available to read online.</li>
        <li>✔ User-friendly interface with a clean reading experience.</li>
        <li>✔ Mobile-friendly design for reading on the go.</li>
        <li>✔ Constant updates with new content added weekly.</li>
    </ul>

    <h2>Join Our Community</h2>
    <p>
        Whether you are a student, a teacher, or a lifelong learner, we invite you to become a part of our growing community. 
        Sign up today and start exploring the world of books!
    </p>
</div>

<footer>
    &copy; <?php echo date("Y"); ?> Online Reading Club. All rights reserved.
</footer>
<script>
    function scrollSlider(direction) {
        const container = document.getElementById("sliderContainer");
        const scrollAmount = 260; // how much to scroll with each click
        container.scrollBy({
            left: direction * scrollAmount,
            behavior: "smooth"
        });
    }
</script>


</body>
</html>
