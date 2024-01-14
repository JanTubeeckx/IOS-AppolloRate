//
//  ContentView.swift
//  AppolloRate
//
//  Created by Jan Tubeeckx on 14/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack (alignment: .center) {
            HStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36.0, height: 36.0)
                Text("AppolloRate.")
                    .font(.largeTitle)
            }.padding(30)
            
            MenuCardView(label: "Schaderegistratie")
            HStack {
                MenuCardView(label: "Inventarisaties")
                MenuCardView(label: "AppolloRate.")
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
    let FAIcons = "FontAwesome6Free-Solid"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.blue)
            VStack {
                Image("Clipboard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .frame(width: 56.0, height: 56.0)
                Text(label)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            
        }.onTapGesture {
            print("tapped")
        }
    }
}

#Preview {
    ContentView()
}
