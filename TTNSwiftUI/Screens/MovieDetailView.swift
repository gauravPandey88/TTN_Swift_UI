//
//  MovieDetailView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 20/06/24.
//

import SwiftUI

struct MovieDetailView: View {
    let item: MovieList
    
    var body: some View {
        ZStack(alignment: .top){
            Color.black.ignoresSafeArea()
            Text(item.movieDetails)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.top)
            
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}
