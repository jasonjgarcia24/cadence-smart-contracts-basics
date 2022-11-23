 pub contract ResourcesWithArrays {
    pub var arrayOfGreetings: @[Greeting]

    pub resource Greeting {
        pub let message: String

        init() {
            self.message = "Hello there! :)"
        }
    }

    pub fun addGreeting(greeting: @Greeting) {
        self.arrayOfGreetings.append(<- greeting)
    }

    pub fun removeGreeting(index: Int): @Greeting {
        return <- self.arrayOfGreetings.remove(at: index)
    }

    init() {
        self.arrayOfGreetings <- []
    }
}