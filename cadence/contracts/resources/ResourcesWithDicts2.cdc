pub contract ResourcesWithDicts2 {
    pub resource Hello {
        pub let greeting: String

        init(greeting: String) {
            self.greeting = greeting
        }
    }

    pub fun createHello(greeting: String): @Hello {
        var testResource: @Hello <- create Hello(greeting: greeting)

        return <- testResource
    }

    pub resource HelloBucket {
        pub var hellos: @{UInt64: Hello}

        pub fun depositHello(hello: @Hello) {
            var tempHello: @Hello? <- self.hellos[hello.uuid] <- hello

            destroy tempHello
        }

        init() {
            self.hellos <- {}
        }

        destroy() {
            destroy self.hellos
        }
    }

    pub fun createHelloBucket(): @HelloBucket {
        var hellos: @HelloBucket <- create HelloBucket()

        return <- hellos
    }

    init() {}
}