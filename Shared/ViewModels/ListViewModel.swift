//
//  ListViewModel.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import Combine
import Foundation
import SwiftUI

public class ListViewModel: ObservableObject {
   var people: [Person] = [Person(name: "George", favColor: "Red", favColorView: Color.red, address: "Pusuqui"),
                           Person(name: "Pato", favColor: "Azul", favColorView: Color.blue, address: "Cotacachi"),
                           Person(name: "Dani", favColor: "Amarillo", favColorView: Color.yellow, address: "Conocoto")]
}


public class Person: Identifiable{
   public var id: UUID = UUID()
   var name: String
   var favColor: String
   var favColorView: Color
   var address: String
   
   init(name: String, favColor: String, favColorView: Color, address: String) {
      self.name = name
      self.favColor = favColor
      self.favColorView = favColorView
      self.address = address
   }
   
}
