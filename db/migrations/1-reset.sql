DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS reviews;

-- Create the 'movies' table
CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    releaseDate DATE NOT NULL,
    ageRating TEXT CHECK(ageRating IN ('G', 'PG', 'PG-13', 'R', 'NC-17', 'Not Rated')) DEFAULT 'Not Rated',
    genre TEXT NOT NULL,
    runtime INTEGER CHECK(runtime > 0),
    imageURL TEXT NOT NULL DEFAULT 'default.png'
);

-- Create the 'reviews' table
CREATE TABLE IF NOT EXISTS reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movieId INTEGER NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    content TEXT NOT NULL,
    rating INTEGER CHECK (rating >= 1 AND rating <= 10), -- Ensure rating is between 1 and 10
    FOREIGN KEY (movieId) REFERENCES movies(id) ON DELETE CASCADE
);
