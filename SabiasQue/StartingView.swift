//
//  StartingView.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 25.12.20.
//

import SwiftUI

struct StartingView: View {

    @State private var titleOpacity = 0.0
    @State private var isShowingSplash: Bool = true
    private let animationDuration = 1.0

    let headerText = "SelectCategoryHeader".localized
    var body: some View {
        if isShowingSplash {
            VStack {
                Text("Fact")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .opacity(titleOpacity)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            titleOpacity = 1.0
                        }
                    }
                Text("Machine")
                    .bold()
                    .font(.largeTitle)
                    .frame(alignment: .center)
                    .opacity(titleOpacity)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            titleOpacity = 1.0
                        }
                    }
                Image("logo")
            }.onAppear{
                switchToWelcomeScreens()
            }
        } else {
            NavigationView {
                ScrollView {
                    ContentView()
                }
                .background(ColorConstants.background)
                .edgesIgnoringSafeArea([.bottom])
                .navigationBarTitle(headerText)
            }
        }
    }

    private func switchToWelcomeScreens() {
        let deadline: DispatchTime = .now() + animationDuration
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            withAnimation(.easeInOut(duration: 0.7)) {
                self.isShowingSplash = false
            }
        }
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
