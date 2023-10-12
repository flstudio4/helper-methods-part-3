desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  Movie.destroy_all

  50.times do
    movie = Movie.new
    movie.title = Faker::Movie.title
    movie.description = Faker::Movie.quote
    movie.save
  end
  puts("added #{Movie.all.count} movies to the database")
end
