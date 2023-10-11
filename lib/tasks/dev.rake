desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  Movie.destroy_all
  pp "starting task"

  50.times do
    movie = Movie.new
    movie.title = Faker::Movie.title
    movie.description = Faker::Movie.quote
    movie.save
  end
  pp "success"
end
