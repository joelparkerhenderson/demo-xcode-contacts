import Foundation
import Contacts

class State: ObservableObject {
    
//    @Published var contacts: [CNContact] = CNContactStore.list()
//    @Published var contactsIndex: Int?
//    @Published var contact: CNContact?

//    init() {
//        if !self.contacts.isEmpty {
//            self.contactsIndex = 0
//            self.contact = self.contacts[0]
//        }
//    }
    
//    public func doPrevContact() {
//        if var i = self.contactsIndex {
//            i = (i > 0) ? (i - 1) : (contacts.count - 1)
//            self.contactsIndex = i
//            self.contact = self.contacts[i]
//            print("State doPrevContact() contactsIndex: \(String(describing: contactsIndex)) contact: \(String(describing: contact))")
//        }
//    }
    
//    public func doNextContact() {
//        if var i = self.contactsIndex {
//            i = (i < contacts.count - 1) ? (i + 1) : 0
//            self.contactsIndex = i
//            self.contact = self.contacts[i]
//            print("State doNextContact() contactsIndex: \(String(describing: contactsIndex)) contact: \(String(describing: contact))")
//        }
//    }

}
