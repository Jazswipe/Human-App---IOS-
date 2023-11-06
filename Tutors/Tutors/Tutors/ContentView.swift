//
//  ContentView.swift
//  Tutors
//
//  Created by Артем Маракулин on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.mint, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                List(tutors) { tutor in
                    NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
                        Image(tutor.imageName)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(5)
                            .background(Color.cyan)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(tutor.name)
                                .font(.title3)
                                .foregroundStyle(Color.black)
                                .background(Color.cyan)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text(tutor.headline)
                                .fontWeight(.semibold)
                                .font(.subheadline)
                                .foregroundStyle(Color.gray)
                        }
                    }
                }
                .navigationBarTitle("Human LAB VS")
                .navigationBarTitleDisplayMode(.inline)
                .foregroundColor(.black)
            }
        }
    }
}




























#Preview {
    ContentView(tutors: testData)
}
