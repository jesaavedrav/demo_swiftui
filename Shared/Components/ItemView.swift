//
//  ItemView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct ItemView: View {
   var person: Person
   let action: () -> Void
   
   var body: some View {
      VStack{
         HStack{
            TextWrapperView(text: self.person.name.customUpperCaseGeorge())
               .padding(.horizontal)
            Spacer()
            Button(action: self.action, label: {
               TextWrapperView(text: self.person.favColor)
            })
            .padding(.horizontal)
            .foregroundColor(self.person.favColorView)
         }
         .padding(.top)
         
         TextWrapperView(text: self.person.address)
            .padding(.horizontal)
            .padding(.bottom)
      }
      .border(Color.black)
   }
}

struct ItemView_Previews: PreviewProvider {
   static var previews: some View {
      ItemView(person: Person(name: "sdfsf", favColor: "fsdf", favColorView: Color.green, address: "sdfsdf")){}
   }
}
