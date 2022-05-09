//
//  SearchView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/18/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var search: String = ""
    
    var name: String
    var body: some View {
        HStack {
            TextField("Search...", text: $search, onEditingChanged: {(changed) in
                print("Search onEditingChanged - \(changed)")
            })
            {
                print("search onCommit")
            }
            Image("search")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
        }
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(name : "soup")
        .previewLayout(.fixed(width: 300, height: 100))
    }
}


