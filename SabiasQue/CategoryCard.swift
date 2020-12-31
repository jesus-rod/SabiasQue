//
//  CategoryCard.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 26.12.20.
//

import SwiftUI

struct CategoryCard: View {

    @State var showModal = false

    @State var detailViewModel: DetailView.ViewModel

    var body: some View {

        HStack(alignment: .center, spacing: 4, content: {
            Image(detailViewModel.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .frame(width: 160, height: 160, alignment: .bottomLeading)
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
            VStack {
                Text(detailViewModel.factType.name())
                    .font(.custom("Lato-Bold", size: 24))
                    .foregroundColor(ColorConstants.primaryText)
                    .multilineTextAlignment(.center)
                Text(detailViewModel.title)
                    .font(.custom("Lato-Regular", size: 14))
                    .foregroundColor(ColorConstants.secondaryText)
                    .multilineTextAlignment(.center)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(RoundedRectangle(cornerRadius: 16)
                        .fill(ColorConstants.background)
                        .shadow(radius: 20, x: 10, y: 10))
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))

        .sheet(isPresented: $showModal, onDismiss: self.updateFact, content: {
            let viewModel = DetailView.ViewModel(factType: detailViewModel.factType, title: detailViewModel.title, body: detailViewModel.body, image: detailViewModel.image)
            DetailView(viewModel: viewModel)
        })
        .onTapGesture {
            self.showModal.toggle()
        }
    }

    func updateFact() {
        self.detailViewModel = FactsGenerator().generateFact(for: detailViewModel.factType)
    }

}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        let detailViewModel = DetailView.ViewModel(factType: FactType.science, title: "Sobre einstein", body: "Einstein era un loquillo", image: "science")
        CategoryCard(detailViewModel: detailViewModel) }
}
