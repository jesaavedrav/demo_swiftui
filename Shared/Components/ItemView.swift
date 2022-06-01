//
//  ItemView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct ItemView: View {
   let name: String
   let favColor: String
   let address: String
   let favColorView: Color
    var body: some View {
       VStack{
          HStack{
             TextWrapperView(text: self.name)
                .padding(.horizontal)
             Spacer()
             TextWrapperView(text: self.favColor)
                .padding(.horizontal)
                .foregroundColor(self.favColorView)
          }
          .padding(.top)
          TextWrapperView(text: self.address)
             .padding(.horizontal)
             .padding(.bottom)
       }
       .border(Color.black)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
       ItemView(name: "Juan", favColor: "Green", address: "Urban Plaza", favColorView: Color.red)
    }
}
