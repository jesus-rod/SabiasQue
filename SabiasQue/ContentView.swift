//
//  ContentView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 13.12.20.
//

import SwiftUI

// VStack
// Text()
// LazyVStack()
// -HStack()
// -- Image() -- VStack Text()
//                      Text()


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Selecciona una Categoria")
                .foregroundColor(ColorConstants.primaryText)
                .font(.custom("Lato-Bold", size: 36))
                .lineLimit(2)
                .allowsTightening(true) 
                .frame(maxWidth: .infinity, alignment: .leading)

            LazyVStack {
                CategoryCard("Animales", "Aqui escribiremos algo curioso sobre animales", imageName: "animals")
                CategoryCard("Deportes", "Aqui escribiremos algo curioso sobre animales", imageName: "sports")
                CategoryCard("Historia", "Aqui escribiremos algo curioso sobre animales", imageName: "history")
                CategoryCard("Ciencia", "Aqui escribiremos algo curioso sobre animales", imageName: "science")
            }
            Spacer()
        }.padding()
    }
}

struct CategoryCard: View {

    var title: String = ""
    var subtitle: String = ""
    var imageName: String = ""

    init(_ title: String, _ subtitle: String, imageName: String) {
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
    }

    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
            VStack {
                Text(title)
                    .font(.custom("Lato-Bold", size: 24))
                    .foregroundColor(ColorConstants.primaryText)
                Text(subtitle)
                    .font(.custom("Lato-Regular", size: 14))
                    .foregroundColor(ColorConstants.secondaryText)
            }
            .padding(EdgeInsets(top: 30, leading: 0, bottom: 15, trailing: 0))
        })
        .padding(EdgeInsets(top: -20, leading: 0, bottom: -17, trailing: 0))
        .background(RoundedRectangle(cornerRadius: 16)
                        .fill(ColorConstants.contentBackground)
                        .shadow(radius: 20, x: 10, y: 10))

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

