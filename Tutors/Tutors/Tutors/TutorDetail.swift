//
//  TutorDetail.swift
//  Tutors
//
//  Created by Артем Маракулин on 05.11.2023.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image(name)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 4)
                    )
                    .shadow(radius: 10)
                Text(name)
                    .font(.largeTitle)
                    .padding(10)
                Text(headline)
                    .font(.largeTitle)
                    .padding(2)
                Text(bio)
                    .font(.headline)
                    .lineLimit(10)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                
            }
            .padding().navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
}


#Preview {
    TutorDetail(name: "Artem OG Marakulin", headline: "OG", bio: "Head App developer. Lives in Sacramento, CA and was awarded with Apple's WWDC 2017 Scholarship. Proficient in Swift and Python, it's his dream to develop an AI product.")
}

