//
//  UIColor+Extension.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 1/6/22.
//

import Foundation
import SwiftUI

extension Color {
   static func random() -> Color {
      return Color(
         red:   .random(in: 0.0...1.0),
         green: .random(in: 0.0...1.0),
         blue:  .random(in: 0.0...1.0)
      )
   }
}
