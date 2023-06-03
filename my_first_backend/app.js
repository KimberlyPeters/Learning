const express = require('express');
const app = express();

// Hardcoded information
const songs = [
  'Fly Me to the Moon',
  'My Way',
  'New York, New York',
  'Strangers in the Night',
  'The Way You Look Tonight',
  'I\'ve Got You Under My Skin',
  'Come Fly with Me',
  'Summer Wind',
  'That\'s Life',
  'Love and Marriage',
  'It Was a Very Good Year',
  'Theme from "New York, New York"',
  'High Hopes',
  'All the Way',
  'The Lady Is a Tramp',
  'Chicago (That Toddlin\' Town)',
  'I Get a Kick Out of You',
  'Night and Day',
  'Luck Be a Lady',
  'Something Stupid'
];

const birthDate = 'December 12, 1915';
const birthCity = 'Hoboken, New Jersey';
const wives = ['Nancy Barbato', 'Ava Gardner', 'Mia Farrow', 'Barbara Marx'];

// Routes
app.get('/', (req, res) => {
  const randomSong = songs[Math.floor(Math.random() * songs.length)];
  res.send(randomSong);
});

app.get('/birth_date', (req, res) => {
  res.send(birthDate);
});

app.get('/birth_city', (req, res) => {
  res.send(birthCity);
});

app.get('/wives', (req, res) => {
  const wivesList = wives.join(', ');
  res.send(wivesList);
});

app.get('/picture', (req, res) => {
  res.redirect('https://en.wikipedia.org/wiki/Frank_Sinatra#/media/File:Frank_Sinatra2,_Pal_Joey.jpg');
});

app.get('/public', (req, res) => {
  res.send('Everybody can see this page');
});

app.get('/protected', (req, res) => {
    const authHeader = req.headers.authorization;
    if (!authHeader) {
        res.set('WWW-Authenticate', 'Basic realm="Restricted Area"');
        res.status(401).send('Not authorized.');
        return;
    }

    const [username, password] = atob(authHeader.split(' ')[1]).split(':');

    if (username !== 'admin' || password !== 'admin') {
        res.set('WWW-Authenticate', 'Basic realm="Restricted Area"');
        res.status(401).send('Not authorized.');
        return;
    }

    res.send('Welcome, authenticated client');
});

// Server
const PORT = 8080;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server listening on port ${PORT}`);
});
