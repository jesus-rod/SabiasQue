//
//  MainCTAButton.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 26.12.20.
//

import SwiftUI

struct MainCTAButton: View {

    let title: String
    var buttonAction: () -> Void

    var body: some View {
        Button(action: {
            self.buttonAction()
        }) {
            Text(title).frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, minHeight: 44)
        .foregroundColor(Color.white)
        .background(RoundedRectangle(cornerRadius: .infinity)
                        .fill(ColorConstants.primary)
                        .shadow(radius: 20, x: 10, y: 10))

        .font(.custom("Lato-Bold", size: 16))
    }
}

struct MainCTAButton_Previews: PreviewProvider {
    static var previews: some View {
        MainCTAButton(title: "Test title", buttonAction: {})
    }
}
