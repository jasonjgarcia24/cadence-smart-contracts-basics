pub contract ResourcesWithDicts {
    pub var dictOfGreetings: @{String: Greeting}

    pub resource Greeting {
        pub let message: String

        init() {
            self.message = "Hi there! :)"
        }
    }
    
    pub fun addGreeting(greeting: @Greeting) {
        let key = greeting.message

        self.dictOfGreetings[key] <-! greeting
    }

    pub fun removeGreeting(key: String): @Greeting {
        let greeting <- self.dictOfGreetings.remove(key: key)!
        return <- greeting
    }

    init() {
        self.dictOfGreetings <- {}
    }
}