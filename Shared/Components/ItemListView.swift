//
//  ItemListView.swift
//  demo_swiftui (iOS)
//
//  Created by Jorge Saavedra on 31/5/22.
//

import SwiftUI

struct ItemListView: View {
   @ObservedObject var viewModel: ListViewModel = ListViewModel()
    var body: some View {
       VStack{
          ForEach(viewModel.people) { person in
             ItemView(person: person){
                viewModel.changeColor(id: person.id)
             }
          }
       }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
       ItemListView()
    }
}
