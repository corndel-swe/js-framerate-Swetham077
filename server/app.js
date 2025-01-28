import express from 'express';
import Movie from '../models/Movie.js';

const app = express();
app.use(express.static("public"));
app.set('views', 'exercises/views');
app.set('view engine', 'ejs');

app.get('/', async (req, res) => {
    try {
        const movies = await Movie.findAll();
        console.log(movies); 
        res.render('movies', { movies });
    } catch (error) {
        console.error('Error fetching movies:', error);
        res.status(500).send('Error fetching movies');
    }
});

app.get('/movie/:id', async (req, res) => {
    try {
        const movieId = req.params.id;
        const movie = await Movie.findByPk(movieId, {
            include: ['reviews']
        });
        if (movie) {
            res.render('movieDetails', { movie });
        } else {
            res.status(404).send('Movie not found');
        }
    } catch (error) {
        console.error('Error fetching movie details:', error);
        res.status(500).send('Error fetching movie details');
    }
});

export default app;