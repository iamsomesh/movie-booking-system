# Creating movie for the database
movie1 = Movie.create!(title: 'Hindustani 2', genre: 'Action/Drama/Thriller')
movie2 = Movie.create!(title: 'Kalki 2898 AD', genre: 'Action/Sci-Fi/Thriller')
movie3 = Movie.create!(title: 'Deadpool & Wolverine', genre: 'Action/Adventure/Comedy')
movie4 = Movie.create!(title: 'Sarfira', genre: 'Biography/Drama')
movie5 = Movie.create!(title: 'Kill', genre: 'Action/Thriller')

# Create admin user
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: :admin)

# Create normal user
User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

# Creating showtimes for the database
Showtime.create!(movie: movie1, start_time: 1.day.from_now, seats_available: 10)
Showtime.create!(movie: movie2, start_time: 2.days.from_now, seats_available: 20)
Showtime.create!(movie: movie3, start_time: 3.days.from_now, seats_available: 30)
Showtime.create!(movie: movie4, start_time: 4.days.from_now, seats_available: 40)
Showtime.create!(movie: movie5, start_time: 5.days.from_now, seats_available: 50)
