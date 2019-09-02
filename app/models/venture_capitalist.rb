class VentureCapitalist
    attr_reader :name, :total_worth
    @@all= []

    def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
    end 

    def self.all
        return @@all
    end

    def self.tres_commas_club
        VentureCapitalist.all.select do 
            |x| x.total_worth > 1000000000
        end
    end

    def offer_contract(startup, type, investment)
        fr = FundingRound.new(self, startup, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |fund|
            fund.venture_capitalist == self
        end
    end

    def portfolio
        portfolio = self.funding_rounds.map {|fund|fund.startup}
        portfolio.uniq
    end

    def biggest_investment
        self.funding_rounds.max_by {|funds| funds.investment}
    end

    def invested(invested_domain)
            total_invested = self.funding_rounds.select {|fund|fund.startup.domain == invested_domain}
            total_invested.reduce(0) {|sum, round|sum += round.investment}
    end
end
