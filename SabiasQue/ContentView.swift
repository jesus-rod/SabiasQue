//
//  ContentView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

struct ContentView: View {

    let categories: [DetailView.ViewModel] = FactsGenerator().generate()

    var body: some View {
        VStack {
            LazyVStack {
                ForEach(categories, id: \.self) { category in
                    CategoryCard(detailInfo: category)
                }
            }
        }.padding([.top, .bottom], 30)	
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
