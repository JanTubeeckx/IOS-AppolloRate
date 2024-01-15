//
//  ContentView.swift
//  AppolloRate
//
//  Created by Jan Tubeeckx on 14/01/2024.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            HStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36.0, height: 36.0)
                Text("AppolloRate.")
                    .font(.largeTitle)
            }.padding(40)
            MenuCardView(label: "Schaderegistratie", image: "Clipboard", isBigCard: true)
            HStack(spacing: 10) {
                MenuCardView(label: "Inventarisaties", image: "List")
                MenuCardView(label: "AppolloRate.", image: "Info")
            }
            Text("De inventarisatietool voor uw bibliotheek")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(40)
        }
        .padding()
    }
}

struct MenuCardView: View {
    var label: String
    var image: String
    var isBigCard: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.blue)
            VStack {
                if isBigCard {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65.0, height: 65.0)
                        .padding(10)
                    Text(label)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                } else {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45.0, height: 45.0)
                        .padding(10)
                    Text(label)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
            }
        }.onTapGesture {
            print("tapped")
        }
    }
}

#Preview {
    HomePageView()
}
