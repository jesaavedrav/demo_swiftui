//
//  ItemView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct ItemView: View {
   @Binding var person: Person
   let action: () -> Void
   @State var isEditing: Bool = false
   
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
         
         HStack {
            if isEditing {
               TextField("", text: $person.address)
                  .foregroundColor(Color.gray)
            } else {
               TextWrapperView(text: self.person.address)
            }
            
            Spacer()
            Button(action: {
               self.isEditing.toggle()
            }, label: {
               Text(isEditing ? "Done" : "Edit")
            })
         }
         .padding(.horizontal)
         .padding(.bottom)
      }
      .border(Color.black)
   }
}

struct ItemView_Previews: PreviewProvider {
   static var previews: some View {
      ItemView(person: .constant(Person(name: "sdfsf", favColor: "fsdf", favColorView: Color.green, address: "sdfsdf"))){}
   }
}
