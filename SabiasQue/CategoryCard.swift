//
//  CategoryCard.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 26.12.20.
//

import SwiftUI

struct CategoryCard: View {

    @State var showModal = false

    var title: String = ""
    let detailViewModel: DetailView.ViewModel

    init(_ title: String, detailInfo: DetailView.ViewModel) {
        self.title = title
        self.detailViewModel = detailInfo
    }

    var body: some View {

        HStack(alignment: .center, spacing: 4, content: {
            Image(detailViewModel.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .frame(width: 160, height: 160, alignment: .bottomLeading)
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
            VStack {
                Text(title)
                    .font(.custom("Lato-Bold", size: 24))
                    .foregroundColor(ColorConstants.primaryText)
                Text(detailViewModel.title)
                    .font(.custom("Lato-Regular", size: 14))
                    .foregroundColor(ColorConstants.secondaryText)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(RoundedRectangle(cornerRadius: 16)
                        .fill(ColorConstants.background)
                        .shadow(radius: 20, x: 10, y: 10))
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))



        .sheet(isPresented: $showModal, content: {
            let viewModel = DetailView.ViewModel(title: detailViewModel.title, body: detailViewModel.body, image: detailViewModel.image)
            DetailView(viewModel: viewModel)
        })
        .onTapGesture {
            self.showModal.toggle()
        }
    }

}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard("Ciencia", detailInfo: DetailView.ViewModel(title: "Sobre einstein", body: "Einstein era un loquillo", image: "science")) }
}
