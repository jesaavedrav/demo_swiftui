//
//  ContentView.swift
//  Shared
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ItemListView()
          .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
