//
//  SecondContentView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/28/22.
//

import SwiftUI

struct SecondContentView: View {
    
    let profiles = [
        Profile(name: "Braudel Kershaw"),
    ]
    
    let scholarships = [
        Scholarship(name: "TN Promise"),
        Scholarship(name: "FS Promise"),
        Scholarship(name: "ML Promise"),
    ]
     
    var body: some View {
        VStack {
            List(profiles) { profile in
                ProfileView(name: profile.name)
            }
            HStack {
            Image (systemName: "building")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
            Text ("                  ")
            Image (systemName: "note.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
            }
            List(scholarships) { scholarship in
                ScholarshipView(name: scholarship.name)
            }
            Spacer()
        }
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}
