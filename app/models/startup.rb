class Startup
    attr_reader :name, :founder, :domain
      @@all = []
      
    def initialize(name, founder, domain)
      @name = name
      @founder = founder
      @domain = domain
      @all << self
    end
    
    def pivot(domain, name)
      @name = name
      @domain = domain
    end
    
    
    
    
    
    
    
    
    
    
    
end
