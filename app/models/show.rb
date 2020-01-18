class Show < ActiveRecord::Base
    def self.highest_rating
        # highest rating (integer)
        Show.maximum("rating")
    end

    def self.most_popular_show
        # show with highest rating (show name)
        Show.find_by(rating: highest_rating)
    end

    def self.lowest_rating
        # value of the lowest rating (integer)
        Show.minimum("rating")
    end

    def self.least_popular_show
        # show with lowest rating (show name)
        Show.find_by(rating: lowest_rating)
    end

    def self.ratings_sum
        #total of all ratings
        Show.sum("rating")
    end

    def self.popular_shows
        #shows with rating greater than 5
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        # puts all instances of Show class in order by show name
        Show.order(:name)
    end
end