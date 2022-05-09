//
//  SettingView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/18/22.
//

import SwiftUI

struct SettingView: View {
    
    var name: String
    var body: some View {
        HStack {
            Image("Gear")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75, alignment: .center)
        }
        .padding()
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(name : "Setting")
        .previewLayout(.fixed(width: 300, height: 100))
    }
}

