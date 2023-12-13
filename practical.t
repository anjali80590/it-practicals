Q1: Display your systems IP Address, Subnet mask using ipconfig, and find out the network address and the maximum number of systems possible on your network and range of IP addresses available to these systems.




Q3: Create an HTML page that shows information about you, your course, hobbies, address, and your plans. Use CSS for styling of HTML page so that looks nice.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }
        h1 {
            font-size: 32px;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #333;
        }
        p {
            line-height: 1.5;
        }
        ul {
            list-style: disc;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>About Me</h1>
    </header>
    <div class="container">
        <h2>Personal Information</h2>
        <p><strong>Name:</strong> Your Name</p>
        <p><strong>Course:</strong> Your Course Name</p>
        <p><strong>Hobbies:</strong></p>
        <ul>
            <li>Hobby 1</li>
            <li>Hobby 2</li>
            <li>Hobby 3</li>
        </ul>
        <h2>Contact Information</h2>
        <p><strong>Address:</strong> Your Address</p>
        <p><strong>Email:</strong> your@email.com</p>
        <h2>Future Plans</h2>
        <p>Write about your future plans and aspirations here.</p>
    </div>
</body>
</html>

Q4: Create an HTML page with the sole purpose to show multiplication tables of 2 to 10 (row-wise) created by JavaScript. Initially, the page is blank. With help of setInterval function print a row every 5 seconds in different colors and increasing font size.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiplication Tables</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
    <div id="multiplication-table">
    </div>
    <script>
        let currentNumber = 2; // Starting number
        const tableContainer = document.getElementById("multiplication-table");

        function createMultiplicationRow(number) {
            const row = document.createElement("div");
            const color = getRandomColor();
            row.style.fontSize = `${number * 10}px`;
            row.style.color = color;
            row.textContent = `${number} x `;
            for (let i = 1; i <= 10; i++) {
                const result = number * i;
                const cell = document.createElement("span");
                cell.style.color = color;
                cell.textContent = `${i} = ${result}  `;
                row.appendChild(cell);
            }
            tableContainer.appendChild(row);
        }
        function getRandomColor() {
            const letters = "0123456789ABCDEF";
            let color = "#";
            for (let i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }
        function displayNextRow() {
            if (currentNumber <= 10) {
                createMultiplicationRow(currentNumber);
                currentNumber++;
            }
            else {
                clearInterval(interval);
            }
        }
        const interval = setInterval(displayNextRow, 5000);
    </script>
</body>
</html>

Q5: Create an HTML page with a paragraph written on it and under which 9 buttons are placed in a
3X3 grid. The first row is for buttons labeled with colors names Red, Green, and Blue, the
second row with numbers 10, 20, 30, and the third row with different font names. Click event
of each of the buttons should make the appropriate change in the style of paragraph.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Style Changer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .button-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 10px;
        }

        .button {
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <p id="text">This is a sample paragraph.</p>
    <div class="button-grid">
        <button class="button" onclick="changeColor('red')">Red</button>
        <button class="button" onclick="changeColor('green')">Green</button>
        <button class="button" onclick="changeColor('blue')">Blue</button>
        <button class="button" onclick="changeFontSize(10)">10</button>
        <button class="button" onclick="changeFontSize(20)">20</button>
        <button class="button" onclick="changeFontSize(30)">30</button>
        <button class="button" onclick="changeFont('Arial')">Arial</button>
        <button class="button" onclick="changeFont('Times New Roman')">Times New Roman</button>
        <button class="button" onclick="changeFont('Verdana')">Verdana</button>
    </div>
    
    <script>
        const text = document.getElementById("text");

        function changeColor(color) {
            text.style.color = color;
        }

        function changeFontSize(fontSize) {
            text.style.fontSize = `${fontSize}px`;
        }

        function changeFont(fontName) {
            text.style.fontFamily = fontName;
        }
    </script>
</body>
</html>

Q6: Create a form that takes data about a pet. The form must be well designed and should accept the pet’s name, age, weight, type, and what it likes most. At the submission of this form create a Pet object in JavaScript filled with these values and log that object and equivalent JSON on the console.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label, input {
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Pet Information Form</h2>
        <form id="petForm">
            <label for="name">Pet's Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="weight">Weight (in pounds):</label>
            <input type="number" id="weight" name="weight" required>

            <label for="type">Type:</label>
            <input type="text" id="type" name="type" required>

            <label for="likes">What it likes most:</label>
            <input type="text" id="likes" name="likes" required>

            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        const petForm = document.getElementById("petForm");

        petForm.addEventListener("submit", function (event) {
            event.preventDefault();

            const name = document.getElementById("name").value;
            const age = parseInt(document.getElementById("age").value);
            const weight = parseFloat(document.getElementById("weight").value);
            const type = document.getElementById("type").value;
            const likes = document.getElementById("likes").value;

            const pet = {
                name: name,
                age: age,
                weight: weight,
                type: type,
                likes: likes
            };

            console.log("Pet Object:", pet);
            console.log("JSON Representation:", JSON.stringify(pet));
        });
    </script>
</body>
</html>

Q7:Store JSON data of few pets that you created in previous practical in a JSON file (copy from
console output of previous program to a .json file). Using AJAX, load data from the file and
display it in a presentable way using HTML and CSS.

JSON
[
    {
        "name": "Fluffy",
        "age": 3,
        "weight": 12,
        "type": "Cat",
        "likes": "Playing with yarn"
    },
    {
        "name": "Buddy",
        "age": 5,
        "weight": 25,
        "type": "Dog",
        "likes": "Chasing tennis balls"
    },
    {
        "name": "Hopper",
        "age": 1,
        "weight": 1.5,
        "type": "Rabbit",
        "likes": "Nibbling on carrots"
    }
]

HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pets Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .pet-card {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #fff;
        }

        .pet-card h2 {
            color: #333;
        }

        .pet-info {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Pets Information</h2>
        <div id="pets-list"></div>
    </div>

    <script>
        const petsList = document.getElementById("pets-list");

        // Load data from pets.json using AJAX
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "pets.json", true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                const petsData = JSON.parse(xhr.responseText);
                displayPets(petsData);
            } else {
                console.error("Failed to load data.");
            }
        };
        xhr.send();

        // Display pets data in a presentable way
        function displayPets(pets) {
            pets.forEach(pet => {
                const petCard = document.createElement("div");
                petCard.classList.add("pet-card");

                const petName = document.createElement("h2");
                petName.textContent = pet.name;

                const petInfo = document.createElement("div");
                petInfo.classList.add("pet-info");
                petInfo.innerHTML = `Age: ${pet.age} years<br>Weight: ${pet.weight} pounds<br>Type: ${pet.type}<br>Likes: ${pet.likes}`;

                petCard.appendChild(petName);
                petCard.appendChild(petInfo);
                petsList.appendChild(petCard);
            });
        }
    </script>
</body>
</html>
Q8:Create a plain HTML page for B.Sc. Hons CS course, mentioning details like fee, eligibility
criteria, papers with names and credits, and future possibilities after the course. A button for
styling should be there at bottom of the page. On clicking on this button JavaScript should
redesign the complete page using jQuery in a nice presentable way.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B.Sc. Hons Computer Science</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .course-details {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        ul {
            list-style-type: square;
        }

        #styleButton {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #0074cc;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="course-details">
        <h1>B.Sc. Hons Computer Science</h1>
        <p><strong>Fee:</strong> Contact the university for the latest fee information.</p>
        <p><strong>Eligibility Criteria:</strong> Bachelor's degree in any discipline with a strong foundation in mathematics and computer science.</p>
        <p><strong>Papers:</strong></p>
        <ul>
            <li>Introduction to Computer Science (Credits: 3)</li>
            <li>Data Structures and Algorithms (Credits: 4)</li>
            <li>Operating Systems (Credits: 3)</li>
            <!-- Add more papers as needed -->
        </ul>
        <p><strong>Future Possibilities:</strong> Graduates can pursue careers as software developers, data scientists, system analysts, and more.</p>
        <button id="styleButton">Style Page</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#styleButton').click(function() {
                $('.course-details').css({
                    'background-color': '#f5f5f5',
                    'border': '1px solid #ccc',
                    'border-radius': '5px',
                    'padding': '20px'
                });

                $('h1').css('color', '#0074cc');
                $('ul').css('list-style-type', 'disc');
                $('p').css('color', '#333');
            });
        });
    </script>
</body>
</html>

Q9: Create an HTML page for an image gallery which shows the use of BOOTSTRAP to rearrange
and resize its contents on resizing the browser.

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .gallery-image {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-4">Image Gallery</h1>
        <div class="row">
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image1.jpg" alt="Image 1" class="gallery-image">
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image2.jpg" alt="Image 2" class="gallery-image">
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image3.jpg" alt="Image 3" class="gallery-image">
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image4.jpg" alt="Image 4" class="gallery-image">
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image5.jpg" alt="Image 5" class="gallery-image">
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <img src="image6.jpg" alt="Image 6" class="gallery-image">
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS for responsive functionality -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

Q10: Create an HTTP server using Node.js which handles requests on port 10000 or a free port
beyond 10000. Modify the server in such a way that opening localhost:10000 will display “Hello
world, This is my Node.js server” on browser.

const http = require('http');

const server = http.createServer((req, res) => {
    if (req.url === '/') {
        res.writeHead(200, { 'Content-Type': 'text/plain' });
        res.end('Hello world, This is my Node.js server\n');
    } else {
        res.writeHead(404, { 'Content-Type': 'text/plain' });
        res.end('Not Found\n');
    }
});

server.listen(10000, () => {
    console.log('Server is running at http://localhost:10000/');
});

Q11 : Create index.html file containing two forms for SignIn and SignUp. Submitting SignIn form
should search for credentials in mysql database using server created in previous practical. On
successful signin, a welcome page should be displayed. Submitting SignUp form should insert
new entry for credentials in mysql database using server created in previous practical. On
successful signup, user should be returned back to index.html.

HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Authentication</title>
</head>
<body>
    <h1>Welcome to Our App</h1>
    <h2>Sign In</h2>
    <form id="signInForm" action="/signin" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Sign In</button>
    </form>

    <h2>Sign Up</h2>
    <form id="signUpForm" action="/signup" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Sign Up</button>
    </form>
</body>
</html>

JAVA SCRIPT
const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const app = express();
const port = 3000; // You can use any port you prefer

app.use(bodyParser.urlencoded({ extended: true }));

const db = mysql.createConnection({
    host: 'your-database-host',
    user: 'your-database-username',
    password: 'your-database-password',
    database: 'your-database-name',
});

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to the database');
});

app.post('/signin', (req, res) => {
    const { username, password } = req.body;

    // Perform a database query to check if the username and password are valid
    // If valid, you can redirect the user to a welcome page
    // Otherwise, display an error message

    // Example query (not secure; use prepared statements for security):
    const sql = `SELECT * FROM users WHERE username = ? AND password = ?`;
    db.query(sql, [username, password], (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
            res.send('Welcome, ' + username);
        } else {
            res.send('Invalid credentials');
        }
    });
});

app.post('/signup', (req, res) => {
    const { username, password } = req.body;

    // Perform a database query to insert the new user
    // If successful, you can redirect the user back to the index page
    // Otherwise, display an error message

    // Example query (not secure; use prepared statements for security):
    const sql = `INSERT INTO users (username, password) VALUES (?, ?)`;
    db.query(sql, [username, password], (err) => {
        if (err) throw err;
        res.redirect('/');
    });
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
