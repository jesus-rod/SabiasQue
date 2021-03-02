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
            return "AnimalsCategoryTitle".localized
        case .sports:
            return "SportsCategoryTitle".localized
        case .history:
            return "HistoryCategoryTitle".localized
        case .science:
            return "ScienceCategoryTitle".localized
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

    func generate() -> [DetailView.ViewModel] {
        var viewModels = [DetailView.ViewModel]()
        FactType.allCases.forEach({ (factType) in
            let factViewModel = generateFact(for: factType)
            viewModels.append(factViewModel)
        })
        return viewModels
    }



    func generateFact(for factType: FactType) -> DetailView.ViewModel {
        let fileName = "\(factType.name()).json".lowercased()
        let fact = Bundle.main.decode([Fact].self, from: fileName)
        let randomFact = fact.randomElement()!
        let viewModel = DetailView.ViewModel(factType: factType, title: randomFact.title, body: randomFact.body, image: factType.rawValue)
        return viewModel
    }

}
