const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();
const port = 3000;

// Statik dosyalar için public klasörünü ayarla
app.use(express.static(path.join(__dirname, 'public')));

// EJS şablon motorunu ayarla
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Veri dosyasının yolu
const dbFilePath = path.join(__dirname, 'app', 'db.json');

// JSON dosyasından veriyi oku
const readData = () => {
    const data = fs.readFileSync(dbFilePath);
    return JSON.parse(data);
};

// JSON dosyasına veriyi yaz
const writeData = (data) => {
    fs.writeFileSync(dbFilePath, JSON.stringify(data, null, 2));
};

// API endpoint örnekleri
app.get('/endpoint1', (req, res) => {
    let data = readData();
    let endpoint = data.endpoints.find(e => e.url === '/endpoint1');
    if (endpoint) {
        endpoint.hits += 1;
        writeData(data);
    }
    res.json({ message: 'Data from endpoint 1' });
});

app.get('/endpoint2', (req, res) => {
    let data = readData();
    let endpoint = data.endpoints.find(e => e.url === '/endpoint2');
    if (endpoint) {
        endpoint.hits += 1;
        writeData(data);
    }
    res.json({ message: 'Data from endpoint 2' });
});

// Ana sayfa
app.get('/', (req, res) => {
    let data = readData();
    const totalApis = data.endpoints.length;
    const totalRequests = data.endpoints.reduce((total, endpoint) => total + endpoint.hits, 0);

    res.render('index', {
        endpoints: data.endpoints,
        totalApis: totalApis,
        totalRequests: totalRequests
    });
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});