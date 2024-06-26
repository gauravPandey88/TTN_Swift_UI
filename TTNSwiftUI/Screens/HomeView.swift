//
//  HomeView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 19/06/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.black
            List(sampleMovies) { items in
                Button {
                    path.append(Route.movieDetail(items))
                } label: {
                    Text(items.title)
                        .foregroundStyle(Color.white)
                }
                .listRowBackground(Color.black)
                
            }
            .listStyle(.plain)
            .navigationTitle("Movies")
            .navigationBarBackButtonHidden(true)
            .navigationBarColor(backgroundColor: .black, titleColor: UIColor(red: 1, green: 0.9, blue: 0.6, alpha: 1.0), fontSize: 24)
            
        }
        
        .background(Color.black)
        
        
        
    }
    
    
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
        coloredAppearance.backButtonAppearance.normal.titleTextAttributes  = [.foregroundColor: UIColor.white]
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
        UINavigationBar.appearance().barTintColor = titleColor
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
