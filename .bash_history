npm install express ejs
body {
    background: url('background.jpg') no-repeat center center fixed;
    background-size: cover;
    color: #fff;
    font-family: Arial, sans-serif;
}
.container {
    padding: 20px;
    max-width: 600px;
    margin: 0 auto;
}
h1 {
    text-align: center;
}
.api-box {
    background-color: #444; /* Dark gray or blackish color */
    border-radius: 10px;
    padding: 20px;
    margin: 10px 0;
    color: white; /* Ensure text is readable on dark background */
    animation: colorfulShadow 5s infinite;
    text-align: center; /* Box içindeki metinleri ortalamak için */
}
.api-box h2 {
    display: flex;
    justify-content: center; /* Metni yatayda ortalamak için */
    align-items: center;
    flex-direction: column; /* Elementleri dikeyde hizalamak için */
}
.api-box .status {
    width: 10px;
    height: 10px;
    background-color: green;
    border-radius: 50%;
    display: inline-block;
    margin-top: 10px; /* Durum göstergesini biraz aşağıya almak için */
}
button {
    background-color: #007bff;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 10px;
    border-radius: 5px;
    cursor: pointer;
}
button:hover {
    background-color: #0056b3;
}
.details {
    display: none;
    margin-top: 10px;
    padding: 10px;
    background-color: #555;
    border-radius: 5px;
}
@keyframes colorfulShadow {
    0% {
        box-shadow: 0 0 15px 5px rgba(255, 0, 0, 1),
                    0 0 25px 10px rgba(0, 255, 0, 1),
                    0 0 35px 15px rgba(0, 0, 255, 1);
    }
    25% {
        box-shadow: 0 0 15px 5px rgba(0, 255, 0, 1),
                    0 0 25px 10px rgba(0, 0, 255, 1),
                    0 0 35px 15px rgba(255, 0, 0, 1);
    }
    50% {
        box-shadow: 0 0 15px 5px rgba(0, 0, 255, 1),
                    0 0 25px 10px rgba(255, 0, 0, 1),
                    0 0 35px 15px rgba(0, 255, 0, 1);
    }
    75% {
        box-shadow: 0 0 15px 5px rgba(255, 0, 0, 1),
                    0 0 25px 10px rgba(0, 255, 0, 1),
                    0 0 35px 15px rgba(0, 0, 255, 1);
    }
    100% {
        box-shadow: 0 0 15px 5px rgba(0, 255, 0, 1),
                    0 0 25px 10px rgba(0, 0, 255, 1),
                    0 0 35px 15px rgba(255, 0, 0, 1);
    }
npm i mongoose
npm update bson mongodb
