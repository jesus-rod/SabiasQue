//
//  FactsGenerator.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 31.12.20.
//

import Foundation

enum FactType: String, CaseIterable {
    case animals
    case sports
    case history
    case science

    func name() -> String {
        switch self {
        case .animals:
            return "Animales"
        case .sports:
            return "Deportes"
        case .history:
            return "Historia"
        case .science:
            return "Ciencia"
        default:
            return "Random"
        }
    }

}

struct FactsGenerator {

    struct Category {
        // FactType is used to load data from JSON
        let type: FactType
        let name: String
        let imageName: String

    }


    private let animals = Category(type: .animals, name: "Animales", imageName: "animals")

    func generate() -> [DetailView.ViewModel] {
        var viewModels = [DetailView.ViewModel]()
        FactType.allCases.forEach({ (factType) in
            let factViewModel = generateFact(for: factType)
            viewModels.append(factViewModel)
        })
        return viewModels
    }



    func generateFact(for factType: FactType) -> DetailView.ViewModel {
        let fact = Bundle.main.decode([Fact].self, from: "\(factType.rawValue).json")
        let randomFact = fact.randomElement()!
        let viewModel = DetailView.ViewModel(factType: factType, title: randomFact.title, body: randomFact.body, image: factType.rawValue)
        return viewModel
    }

}
