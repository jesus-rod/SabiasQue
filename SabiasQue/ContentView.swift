//
//  ContentView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

struct ContentView: View {

    @State var categories: [DetailView.ViewModel] = FactsGenerator().generate()

    var body: some View {
        VStack {
            LazyVStack {
                ForEach(categories, id: \.self) { category in
                    CategoryCard(detailViewModel: category)
                }
            }
        }.padding([.top, .bottom], 30)
        .onDisappear(perform: {
            print("reload now")
        })
        .onAppear(perform: {
            print("xx")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
