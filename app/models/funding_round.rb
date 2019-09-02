class FundingRound
    attr_reader :startup, :venture_capitalist, :type, :investment
    attr_accessor :type, :investment
    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        @@all << self

        if investment >= 0
            @investment = investment.to_f
          else
            @investment = 0.to_f
            puts "Investment value cannot be negative."
          end
    end

    def self.all
        @@all
    end
end
