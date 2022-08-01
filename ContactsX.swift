//
//  ContactsX.swift
//  PhotoCaller
//
//  Created by jph on 8/1/22.
//

import Foundation

// Delete a contact by matching name.
func deleteContactByName(name: String) {
    let request = CNContactFetchRequest(keysToFetch: [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)])
    request.predicate = CNContact.predicateForContacts(matchingName: matchingName)
    let store = CNContactStore()
    try? store.enumerateContacts(with: request, usingBlock: { contact, _ in
        CNSaveRequest().delete(contact.mutableCopy() as! CNMutableContact)
    })
}
