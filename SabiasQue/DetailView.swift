//
//  DetailView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 25.12.20.
//

import SwiftUI

struct DetailView: View {

    let viewModel: ViewModel

    struct ViewModel: Hashable {
        let factType: FactType
        let title: String
        let body: String
        let image: String
    }

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(spacing: -20) {
            HStack {
                Image(viewModel.image)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 200, idealWidth: 200, maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 240, alignment: .bottomLeading)

                Text("Sabias que...")
                    .shadow(radius: 2, x: 2, y: 2)
                    .font(.custom("Lato-Bold", size: 36))
                    .padding(EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 20))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .center)


            }

            VStack(spacing: 24) {
                Text(viewModel.title)
                    .font(.custom("Lato-Bold", size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(viewModel.body)
                    .font(.custom("Lato-Regular", size: 16))
                    .foregroundColor(ColorConstants.tertiaryText)
                    .foregroundColor(ColorConstants.secondaryText)
                    .frame(maxWidth: .infinity, alignment: .leading)


                Spacer()
                MainCTAButton(title: "Regresar") {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }.frame(maxWidth: .infinity)
            .padding(.all, 24)
            .background(RoundedRectangle(cornerRadius: 24)
                            .fill(ColorConstants.background)
                            .shadow(radius: 20, x: 10, y: 10))

        }
        .frame(maxWidth: .infinity)
        .background(ColorConstants.primary)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailView.ViewModel(factType: FactType.animals, title: "Los dientes del tiburon", body: "Bacon ipsum dolor amet short ribs kevin brisket t-bone pancetta, landjaeger leberkas swine pig jerky sirloin. Pork loin tongue bresaola picanha ribeye. Jowl ham cupim ribeye tenderloin pork belly short loin pork loin andouille t-bone chislic ball tip porchetta pastrami corned beef. Rump pork chop venison cow frankfurter prosciutto kielbasa burgdoggen tri-tip, jowl spare ribs swine filet mignon doner shank. Brisket tail fatback ground round, tenderloin ball tip swine spare ribs landjaeger biltong tri-tip pastrami venison turkey. Shank burgdoggen leberkas venison, chuck andouille hamburger pork belly.", image: "science")
        DetailView(viewModel: viewModel)
    }
}
