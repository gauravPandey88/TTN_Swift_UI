//
//  HomeView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 19/06/24.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let posterName: String
}

let sampleMovies = [
    Movie(title: "Inception", posterName: "inception"),
    Movie(title: "Interstellar", posterName: "inception"),
    Movie(title: "The Dark Knight", posterName: "inception"),
    Movie(title: "The Prestige", posterName: "inception"),
    Movie(title: "Memento", posterName: "inception")
    // Add more movies as needed
]

struct MovieCell: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Image(movie.posterName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            Text(movie.title)
                .font(.system(size: 15, weight: .semibold))
                .foregroundStyle(Color(red: 1, green: 0.9, blue: 0.6))
                .lineLimit(1)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.black))
    }
}

struct MovieGridView: View {
    let movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(movies) { movie in
                    MovieCell(movie: movie)
                }
            }
            .padding()
        }
        .background(.black)
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationView {
                MovieGridView(movies: sampleMovies)
            }
            .navigationTitle("Movies")
            .font(.system(size: 30, weight: .bold))
            .navigationBarBackButtonHidden(true)
            .navigationBarColor(backgroundColor: .black, titleColor: UIColor(red: 1, green: 0.9, blue: 0.6, alpha: 1.0), fontSize: 24)
        }
    }
}

#Preview {
    HomeView()
}


struct NavigationBarModifier: ViewModifier {
    var titleColor: UIColor
    var backgroundColor: UIColor
    var fontSize: CGFloat
    
    init(backgroundColor: UIColor, titleColor: UIColor, fontSize: CGFloat) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.fontSize = fontSize
        
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [
            .foregroundColor: titleColor,
            .font: UIFont.systemFont(ofSize: fontSize, weight: .bold)
        ]
        coloredAppearance.largeTitleTextAttributes = [
            .foregroundColor: titleColor,
            .font: UIFont.systemFont(ofSize: fontSize + 4, weight: .bold) // Larger font for large titles
        ]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.automatic)
    }
}

extension View {
    func navigationBarColor(backgroundColor: UIColor, titleColor: UIColor, fontSize: CGFloat) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor, titleColor: titleColor, fontSize: fontSize))
    }
}
