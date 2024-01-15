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
            logo
            bigCardButton
            smallCardButtons
            slogan
        }
        .padding()
    }
    
    var logo: some View {
        HStack {
            Image(systemName: "book.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36.0, height: 36.0)
            Text("AppolloRate.")
                .font(.largeTitle)
        }.padding(40)
    }
    
    var bigCardButton: some View {
        MenuCardView(label: "Schaderegistratie", image: "pencil.and.list.clipboard", isBigCard: true)
    }
    
    var smallCardButtons: some View {
        HStack(spacing: 10) {
            MenuCardView(label: "Inventarisaties", image: "list.bullet")
            MenuCardView(label: "AppolloRate.", image: "info.circle")
        }
    }
    
    var slogan: some View {
        Text("De inventarisatietool voor uw bibliotheek")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding(40)
    }
}

struct MenuCardView: View {
    let label: String
    let image: String
    var isBigCard = false
    
    var body: some View {
        ZStack {
            card
            content
        }
        .foregroundColor(.white)
        .onTapGesture {
            print("tapped")
        }
    }
    
    var card: some View {
        RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.blue)
    }
    
    var content: some View {
        VStack {
            if isBigCard {
                bigIcon
                largeLabel
            } else {
                smallIcon
                smallLabel
            }
        }
    }
    
    var bigIcon: some View {
        Image(systemName: image)
            .imageScale(.large)
            .font(.system(size: 44))
            .padding(10)
    }
    
    var largeLabel: some View {
        Text(label)
            .font(.title)
            .fontWeight(.semibold)
    }
    
    var smallIcon: some View {
        Image(systemName: image)
            .imageScale(.large)
            .font(.system(size: 38))
            .frame(width: 42.0, height: 42.0)
            .padding(10)
    }
    
    var smallLabel: some View {
        Text(label)
            .font(.title2)
            .fontWeight(.semibold)
    }
}

#Preview {
    HomePageView()
}
