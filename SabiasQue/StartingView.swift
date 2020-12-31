//
//  StartingView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 25.12.20.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ContentView()
            }
            .background(ColorConstants.background)
            .edgesIgnoringSafeArea([.bottom])
            .navigationBarTitle("Selecciona una categoria")
        }
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
