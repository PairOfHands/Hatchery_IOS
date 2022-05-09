//
//  ScholarshipView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/28/22.
//

import SwiftUI

struct ScholarshipView: View {
    var scholarship: Scholarship
    
    var body: some View {
        
            NavigationLink(destination: CompletionView(name: scholarship.name, tasks: scholarship.tasks)){
                Label(scholarship.name, systemImage: "")
            }
    }
    
}

struct ScholarshipView_Previews: PreviewProvider {
    static var previews: some View {
        ScholarshipView(scholarship: Scholarship(name: "TN Promise", tasks: [Task(title: "Do Stuff")]))
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
