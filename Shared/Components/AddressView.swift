//
//  AddressView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 1/6/22.
//

import SwiftUI

struct AddressView: View {
   var person: Person
    var body: some View {
       Text(person.address)
          .foregroundColor(person.favColorView)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
       let person: Person = Person(name: "sdfsf", favColor: "fsdf", favColorView: Color.green, address: "address")
       AddressView(person: person)
    }
}
