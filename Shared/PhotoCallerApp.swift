import SwiftUI
import Contacts
import os

@main
struct PhotoCallerApp: App {

    // Connect to app delegate class defined in AppDelegate.swift
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var cursor: Cursor

    init() {
        logger.info("PhotoCallerApp init")
        CNContactStore().requestAccess(for: .contacts) { (access, error) in
            logger.info("Access: \(access)")
        }
        deleteDemoContacts()
        createDemoContactsForMe()
        createDemoContactsForABCDEF()
        cursor = Cursor(list: CNContactStore.list())
    }

    var body: some Scene {
        WindowGroup {
            ContentView(cursor: cursor)
        }
    }
    
}

func deleteDemoContacts() {
    CNContactStore.deleteByName(name: "Joel Example")
    CNContactStore.deleteByName(name: "Alice Adams")
    CNContactStore.deleteByName(name: "Bob Brown")
    CNContactStore.deleteByName(name: "Carol Curtis")
    CNContactStore.deleteByName(name: "Dave Davis")
    CNContactStore.deleteByName(name: "Eve Evans")
    CNContactStore.deleteByName(name: "Frank Franklin")
}

func createDemoContactsForMe() {
    let contact = CNMutableContact()
    contact.givenName = "Joel"
    contact.familyName = "Example"
    contact.phoneNumbers = [
        CNLabeledValue(
            label: CNLabelPhoneNumberiPhone,
            value: CNPhoneNumber(stringValue: "1 (415) 317-2700")
        ),
    ]
    contact.emailAddresses = [
        CNLabeledValue(
            label: CNLabelHome,
            value: "joel@joelparkerhenderson.com" as NSString
        ),
        CNLabeledValue(
            label: CNLabelWork,
            value: fabEmailAddressAsString() as NSString
        ),
    ]
    CNContactStore.create(contact: contact)
}

func createDemoContactsForABCDEF() {

    demoCreateContactWithNameAndImage(
        givenName: "Alice",
        familyName: "Adams",
        uiImageNamed: "demo-persons-alice-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Bob",
        familyName: "Brown",
        uiImageNamed: "demo-persons-bob-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Carol",
        familyName: "Curtis",
        uiImageNamed: "demo-persons-carol-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Dave",
        familyName: "Davis",
        uiImageNamed: "demo-persons-dave-icons-512"
    )

    demoCreateContactWithNameAndImage(
        givenName: "Eve",
        familyName: "Evans",
        uiImageNamed: "demo-persons-eve-icons-512"
    )
    
}
