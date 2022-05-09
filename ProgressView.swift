//
//  ProgressView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/25/22.
//

import SwiftUI

struct ProgressView: View {
    var name: String
    var body: some View {
        VStack {
            ProgressView(value: 0.2)
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(name : "Progress")
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
