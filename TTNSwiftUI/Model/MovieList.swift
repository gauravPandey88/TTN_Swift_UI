//
//  MovieList.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 26/06/24.
//

import SwiftUI

struct MovieList: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let movieDetails: String
}


let sampleMovies = [
    MovieList(title: "Inception", movieDetails: "As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home."),
    MovieList(title: "Interstellar", movieDetails: "Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone."),
    MovieList(title: "The Dark Knight", movieDetails: "A young girl who goes through a difficult experience begins to see everyone's imaginary friends who have been left behind as their real-life friends have grown up."),
    MovieList(title: "The Prestige", movieDetails: "A skilled Special Forces commando takes ownership of her father's bar after his abrupt death, and soon finds herself at odds with a violent gang running rampant in her hometown."),
    MovieList(title: "Memento", movieDetails: "A mild-mannered professor moonlighting as a fake hit man in police stings ignites a chain reaction of trouble when he falls for a potential client.")
    // Add more movies as needed
]
