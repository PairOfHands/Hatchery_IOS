//
//  SchoolView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/13/22.
//

import SwiftUI

struct SchoolView: View {
    var name: String
    
    var body: some View {
        HStack {
            Image("testSchool")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75, alignment: .center)
            VStack (alignment: .leading){
                Text(name)
                    .bold()
                    .font(.callout)
                Text("University of Ruining Dogs")
                    .font(.callout)
                    
            }
            .padding()
        }
        .padding()
    }
}

struct SchoolView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolView(name : "John Doe")
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
