//
//  ContentView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Selecciona una categoria")
                .foregroundColor(ColorConstants.primaryText)
                .font(.custom("Lato-Bold", size: 36))
                .lineLimit(2)
                .allowsTightening(true)
                .frame(maxWidth: .infinity, alignment: .leading)

            CategoryCard("Animales", shortFact: "Sabias que: los dientes de un tiburón son tan duros como el acero", imageName: "animals")
            CategoryCard("Deportes", shortFact: "Sabias que: los dientes de un tiburón son tan duros como el acero", imageName: "sports")
            CategoryCard("Historia", shortFact: "Sabias que: los dientes de un tiburón son tan duros como el acero", imageName: "history")
            CategoryCard("Ciencia", shortFact: "Sabias que: los dientes de un tiburón son tan duros como el acero", imageName: "science")
            Spacer()
        }
        .padding()
    }
}

struct CategoryCard: View {

    var title = "Titulo"
    var shortFact = "Lorem impsum...."
    var imageName = ""

    init(_ title: String, shortFact: String, imageName: String) {
        self.title = title
        self.shortFact = shortFact
        self.imageName = imageName
    }

    var body: some View {
        VStack {
            HStack(alignment: .center, content: {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16, antialiased: true)
                Spacer()
                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .font(.custom("Lato-Bold", size: 24))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(ColorConstants.primaryText)
                    Text(shortFact)
                        .font(.custom("Lato-Regular", size: 14))
                        .foregroundColor(ColorConstants.secondaryText)
                }
                .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 0))
            })
            .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 20))
        }
        .background(RoundedRectangle(cornerRadius: 16.0)
                        .fill(Color.white)
                        .shadow(radius: 20, x: 10, y: 10))
        .foregroundColor(ColorConstants.contentBackground)

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

