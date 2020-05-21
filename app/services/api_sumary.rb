class ApiSumary
    include HTTParty
    base_uri 'https://swapi.dev/api'

    def initialize
        @options = {}
    end

    def general
        self.class.get('/', @options)
    end

    def peoples
        self.class.get('/people', @options)
    end

    def planets
        self.class.get('/planets', @options)
    end

    def films
        self.class.get('/films', @options)
    end

    def species
        self.class.get('/species', @options)
    end

    def vehicules
        self.class.get('/vehicles', @options)
    end

    def starships
        self.class.get('/starships', @options)
    end

end