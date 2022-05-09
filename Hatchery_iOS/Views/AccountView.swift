//
//  AccountView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/18/22.
//

import SwiftUI

struct AccountView: View {
    var name: String
    
    var body: some View {
        VStack {
            ProfileView(name: "Braudel Kershaw")
        }
        .padding()
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(name : "Jeff Sqrungle")
        .previewLayout(.fixed(width: 300, height: 100))
    }
}


