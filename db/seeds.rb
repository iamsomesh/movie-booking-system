# Creating movie for the database
Movie.create!(title: 'Hindustani 2', genre: 'Action/Drama/Thriller')
Movie.create!(title: 'Kalki 2898 AD', genre: 'Action/Sci-Fi/Thriller')
Movie.create!(title: 'Deadpool & Wolverine', genre: 'Action/Adventure/Comedy')
Movie.create!(title: 'Sarfira', genre: 'Biography/Drama')
Movie.create!(title: 'Kill', genre: 'Action/Thriller')

# Create admin user
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: :admin)

# Create normal user
User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')
