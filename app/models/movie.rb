class Movie < ActiveRecord::Base
    def self.all_ratings
        #all_ratings = ['G','PG','PG-13','R','NC-17']
        all_ratings = Movie.pluck('DISTINCT rating')
        return all_ratings
    end
end
