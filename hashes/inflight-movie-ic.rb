# https://www.interviewcake.com/question/ruby/inflight-entertainment?course=fc1&section=hashing-and-hash-tables
# choosing two movies whose total runtimes will equal the exact flight length.

# Assume your users will watch exactly two movies
# Don't make your users watch the same movie twice
# Optimize for runtime over memory

# flight_lenght: int, in minutes
# movie_length: array of ints in minutes

# option 1 - hash
def find_two_movies(flight_length, movie_lengths)
  movies = Hash.new
  movie_lengths.each do |movie_length|
    second_movie = flight_length - movie_length
    if second_movie != movie_length && movies.has_key?(second_movie)
      return true
    else
      movies[movie_length] = true
    end
  end
  return false
end

# TEST
fl = 5
ml = [1, 2, 3, 4, 5]
p find_two_movies(fl, ml)

fl = 2
ml = [3, 4, 5]
p find_two_movies(fl, ml)

fl = 2
ml = [1, 1, 2, 3, 4]
p find_two_movies(fl, ml)


