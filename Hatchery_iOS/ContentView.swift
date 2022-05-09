//
//  ContentView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var swap = 1;
    
    let profile: Profile = Profile(name: "Braudel Kershaw")
    
    let schools = [
        School(name: "U.R.D."),
        School(name: "U.R.C."),
        School(name:"U.R.K."),
    ]
    
    let scholarships = [
        Scholarship(name: "TN Promise", tasks: []),
        Scholarship(name: "FS Promise", tasks: []),
        Scholarship(name: "ML Promise", tasks: []),
    ]
    
    var body: some View {
        NavigationView {
        VStack {
            ProfileView(name: profile.name)
                .padding(.bottom)
                    
            HStack {
                Spacer()
                Button(action: {
                    withAnimation{
                        swap = 1
                        
                    }}) {
                    Image (systemName: "building")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 64, height: 64)
                }.foregroundColor(.black)
                Spacer()
                Button(action: {
                    withAnimation{
                        swap = 2
                }}) {
                    Image (systemName: "note.text")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 64, height: 64)
                }.foregroundColor(.black)
                Spacer()
            }
                .padding()
                .background(Color.gray.opacity(0.12))
            TabView(selection: $swap) {
                List(schools) { school in
                    SchoolView(name: school.name)
                }.tag(1)
                
                List(scholarships) { scholarship in
                    ScholarshipView(scholarship: scholarship)
                }.tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
