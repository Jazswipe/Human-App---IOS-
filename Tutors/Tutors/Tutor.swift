//
//  Tutor.swift
//  Tutors
//
//  Created by Sai Kambampati on 6/5/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct Tutor: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var bio: String
    
    var imageName: String { return name }
}

#if DEBUG
let testData = [
    Tutor(name: "Artem OG Marakulin", headline: "OG", bio: "Artem Marakulin is an app developer. He lives in Sacramento, CA and was awarded with Apple's WWDC 2017 Scholarship. Proficient in Swift and Python, it's his dream to develop an AI product."),
    Tutor(name: "Kostya Bavin", headline: "Lead Programmer 1C", bio: "Programmer of AppCoda. Author of multiple 1C prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger."),
    Tutor(name: "Maxim Goryachkin", headline: "Seo LAB VS", bio: "Maxim and well-published author and software developer now specializing in iOS mobile app development in Obj-C and Swift. Andrew has published several apps in the Apple App Store and 30 years of experience."),
    Tutor(name: "Sanya Ezhukov", headline: "Founder LAB VS", bio: "Sanya is a co-founder of Business 2.0, a publication dedicated to sharing founders journeys in product and business development in East Asia. Social justice advocate."),
   
]
#endif
