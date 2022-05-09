//
//  ProfileView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/13/22.
//

import SwiftUI

struct ProfileView: View {
    var name: String
    
    var body: some View {
        HStack {
            Image("RoundFace")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75, alignment: .center)
            VStack(alignment: .leading) {
                Text(name)
                    .bold()
                    .font(.callout)
                Text("bkershaw@fake.com")
                    .font(.callout)
                    
            }
            .padding()
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(name: "Bob Newby")
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
