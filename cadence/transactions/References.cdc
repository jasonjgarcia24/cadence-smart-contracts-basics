import References from 0x01

transaction {
    prepare(acct: AuthAccount) {}

    execute {
        var pet: @References.Pet <- References.createPet(name: "Fido")
        log(pet.name)

        var petRef: &References.Pet = &pet as &References.Pet
        References.changePetName(pet: petRef)
        log(pet.name)

        destroy pet

        log("Done")
    }
}