//
//  FactsGenerator.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 31.12.20.
//

import Foundation

struct FactsGenerator {

    func generate() -> [DetailView.ViewModel] {
            var animalsFactViewModel: DetailView.ViewModel {
                let fact = Bundle.main.decode([Fact].self, from: "animals.json")
                let randomFact = fact.randomElement()!
                let viewModel = DetailView.ViewModel(category: "Animales", title: randomFact.title, body: randomFact.body, image: "animals")
                return viewModel
            }

            var sportsFactViewModel: DetailView.ViewModel {
                let animalsFact = Bundle.main.decode([Fact].self, from: "sports.json")
                let randomFact = animalsFact.randomElement()!
                let viewModel = DetailView.ViewModel(category: "Deportes", title: randomFact.title, body: randomFact.body, image: "sports")
                return viewModel
            }

            var historyFactViewModel: DetailView.ViewModel {
                let fact = Bundle.main.decode([Fact].self, from: "history.json")
                let randomFact = fact.randomElement()!
                let viewModel = DetailView.ViewModel(category: "Historia", title: randomFact.title, body: randomFact.body, image: "history")
                return viewModel
            }

            var scienceFactViewModel: DetailView.ViewModel {
                let fact = Bundle.main.decode([Fact].self, from: "science.json")
                let randomFact = fact.randomElement()!
                let viewModel = DetailView.ViewModel(category: "Ciencia", title: randomFact.title, body: randomFact.body, image: "science")
                return viewModel
            }

            return [animalsFactViewModel, sportsFactViewModel,
                    historyFactViewModel, scienceFactViewModel]
    }

}
