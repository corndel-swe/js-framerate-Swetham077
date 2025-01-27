# Contributing

Our priority in this project is to get the user interface working with the
backend.

It is recommended you spend a bit of time studying the codebase, in particular
the `models` folder, so you have an idea of how the backend works.

There aren't many user stories but there are plenty of stretch goals so make
sure you have a go if you get through the main tasks!

## Day 1

- As a user I can visit `/` to view a list of all movies in the database, so
  that I can choose which movies to read more about

- As a user I can visit e.g. `/movie/3` to see detailed information about a
  movie, including its reviews, so that I can decide if I want to watch it or
  not

## Day 2

- As a user, I can visit e.g. `/review/3` to add a new review, so that I can
  inform other users of my opinions about movie `3`

> [!NOTE]
>
> This will require you to add a new method to the `Movie` model which adds a
> review to the `reviews` table, as well as new endpoints in `app.js` and a form
> for the user in `views`

## Extensions

- Can you allow the users to filter the list of movies by genre? E.g. if they
  visit `/?genre=action`

- Add some CSS, so the site looks presentable! Note that the image URLs are real
  and will display cover art for each movie

- Can you leverage the database to show the average review for each movie?

- Can you allow the user to sort the movies by release date, either ascending or
  descending?

- Can you add [input validation](https://tech-docs.corndel.com/express/schema-validation.html)
  (perhaps using Zod) to ensure that the user cannot add invalid data to the database?

- If you're doing input validation, some
  [error handling](https://tech-docs.corndel.com/express/sending-errors.html)
  would be good, too!
