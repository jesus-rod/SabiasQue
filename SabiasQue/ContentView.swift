//
//  ContentView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

struct ContentView: View {

    var animalsFactViewModel: DetailView.ViewModel {
        let fact = Bundle.main.decode([Fact].self, from: "animals.json")
        let randomFact = fact.randomElement()!
        let viewModel = DetailView.ViewModel(title: randomFact.title, body: randomFact.body, image: "animals")
        return viewModel
    }

    var sportsFactViewModel: DetailView.ViewModel {
        let animalsFact = Bundle.main.decode([Fact].self, from: "history.json")
        let randomFact = animalsFact.randomElement()!
        let viewModel = DetailView.ViewModel(title: randomFact.title, body: randomFact.body, image: "sports")
        return viewModel
    }

    var historyFactViewModel: DetailView.ViewModel {
        let fact = Bundle.main.decode([Fact].self, from: "history.json")
        let randomFact = fact.randomElement()!
        let viewModel = DetailView.ViewModel(title: randomFact.title, body: randomFact.body, image: "history")
        return viewModel
    }

    var scienceFactViewModel: DetailView.ViewModel {
        let fact = Bundle.main.decode([Fact].self, from: "science.json")
        let randomFact = fact.randomElement()!
        let viewModel = DetailView.ViewModel(title: randomFact.title, body: randomFact.body, image: "science")
        return viewModel
    }


    var body: some View {
        VStack {
            LazyVStack {
                CategoryCard("Animales", detailInfo: animalsFactViewModel)
                CategoryCard("Deportes", detailInfo: sportsFactViewModel)
                CategoryCard("Historia", detailInfo: historyFactViewModel)
                CategoryCard("Ciencia", detailInfo: scienceFactViewModel)
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
