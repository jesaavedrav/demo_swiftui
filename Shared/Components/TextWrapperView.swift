//
//  TextWrapperView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct TextWrapperView: View {
   let text: String
   var body: some View {
      Text(self.text)
   }
}

struct TextWrapperView_Previews: PreviewProvider {
   static var previews: some View {
      TextWrapperView(text: "holis")
   }
}
