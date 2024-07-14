# Movie Booking System

The Movie Booking System is a Ruby on Rails application designed to streamline the process of browsing movies, booking tickets, and managing seat allocations. It provides an intuitive interface for users to book and cancel tickets, while also offering comprehensive movie and showtime management.

## Key Features

**Movie Initialization**: Browse a curated list of movies with details like title, genre, and show timings.
**User Booking**: Easily book tickets for specific movies and showtimes.
**Seat Allocation**: Automatic allocation of the next available seat upon booking.
**Ticket Cancellation**: Cancel bookings with seats automatically made available again.
**Booking Confirmation**: Receive detailed booking confirmations including movie title, showtime, and seat number.
**Status Display**: View real-time status of booked and available seats for each show.
**Multiple Movies and Shows**: Support for multiple movies with various show timings.


## Dependencies

Make sure you have the following installed on your system.

```bash
Ruby version: 3.0.0p0
Rails version: 7.0.8.4
postgresql
```
## Installation

Clone this repository to your local machine:

```bash
git clone https://github.com/iamsomesh/movie-booking-system.git

```
#### After clone run the following commands

```bash
bundle install
```

#### Change database.yml file configuration as per your system

```bash
  username: "your postgres username"
  password: "your postgres password"
  host: localhost #for local env
  port: 5432
```

#### Setup database

```bash
rails db:create
rails db:migrate
rails db:seed
```

#### Start rails server

```bash
rails s
```

#### Visit `http://localhost:3000` in your browser


## Additionally

#### I used some gems in this application

```bash
devise - used for user authentication solution 
cancancan - used for user authorization
rubocop - Maintain code quality and linter check
```
