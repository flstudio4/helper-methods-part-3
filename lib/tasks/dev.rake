desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  Movie.destroy_all
  50.times do
    movie = Movie.new
    movie.title = Faker::Name.unique.name
    movie.description = Faker::ChuckNorris.fact
    movie.save
  end
end
