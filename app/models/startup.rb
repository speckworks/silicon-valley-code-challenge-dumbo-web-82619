class Startup
    attr_reader :name, :founder, :domain
      @@all = []
      
    def initialize(name, founder, domain)
      @name = name
      @founder = founder
      @domain = domain
      @@all << self
    end

    def pivot(domain, name)
      @name = name
      @domain = domain
    end

    def self.all
    return @@all
    end

    def self.find_by_founder(founder_name)
        @@all.find do |iterator| 
            iterator.founder == founder_name
        end
    end

    def self.domains
        self.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end
    
    def funding_rounds
        FundingRound.all.select {|fund|fund.startup == self}
    end

    def num_funding_rounds                      
       self.funding_rounds.count            
    end

    def received_funds
        self.funding_rounds.map {|fund|fund.investment}
    end

    def total_funds
       received_funds.reduce(:+) 
    end

    def investors
        investors = self.funding_rounds.map do |fund|
            fund.venture_capitalist
          end
          investors.uniq
    end

    def big_investors
        self.investors.select do |investor|
        VentureCapitalist.tres_commas_club.include?(investor)
        end
    end

end    
    
    