import ResourcesWithDicts2 from 0x01

transaction {
    prepare(acct: AuthAccount) {}

    execute{
        let bucket: @ResourcesWithDicts2.HelloBucket <- ResourcesWithDicts2.createHelloBucket()

        bucket.depositHello(hello: <- ResourcesWithDicts2.createHello(greeting: "I created a Hello!"))
        bucket.depositHello(hello: <- ResourcesWithDicts2.createHello(greeting: "I created a Hello!"))
        bucket.depositHello(hello: <- ResourcesWithDicts2.createHello(greeting: "I created a Hello!"))
        bucket.depositHello(hello: <- ResourcesWithDicts2.createHello(greeting: "I created a Hello!"))
        bucket.depositHello(hello: <- ResourcesWithDicts2.createHello(greeting: "I created a Hello!"))

        log(bucket.hellos.keys)
        destroy bucket

        log("Done!")
    }
}