//
//  CompletionView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/25/22.
//

import SwiftUI

struct Task: Hashable, Identifiable {
    var id = UUID()
    
    var title: String
    var complete: Bool = false
}

//SETS THE VARIABLES TO BE FALSE FOR CHECKLIST

struct CompletionView: View {
    var name: String
    @State var tasks: [Task]
    @State var progress = 0.0
    @State private var fasOn = false
    @State private var appOn = false
    @State private var volOn = false
    @State private var semOn = false

    
    var body: some View {
        VStack {
            
//CREATES THE "TN Promise" TITLE AND THE PROGRESS BAR
            
            Text(name)
                .font(.callout)
                .lineLimit(1)
            ProgressView (value: progress)
                .frame(width: 120.0)
//HORIZONTALLY CREATES THE CHECKLIST BOX FOR "FASFA" AND MAKES IT TOGGLEABLE
            HStack{
            Image(systemName: fasOn ? "checkmark.circle" : "circle")
            Toggle("FASFA", isOn: $fasOn)
                    .toggleStyle(.button)
                    .onChange(of: fasOn) {
                        _fasOn in
                        progress += _fasOn ? 0.25 : -0.25
                    }
                    .tint(.black)
            }
//HORIZONTALLY CREATES THE CHECKLIST BOX FOR "Application" AND MAKES IT TOGGLEABLE
            HStack{
            Image(systemName: appOn ? "checkmark.circle" : "circle")
            Toggle("Application", isOn: $appOn)
                    .toggleStyle(.button)
                    .onChange(of: appOn) {
                        _appOn in
                        progress += _appOn ? 0.25 : -0.25
                    }
                    .tint(.black)
            }
//HORIZONTALLY CREATES THE CHECKLIST BOX FOR "Volunteer Hours" AND MAKES IT TOGGLEABLE
            HStack{
            Image(systemName: volOn ? "checkmark.circle" : "circle")
            Toggle("Volunteer Hours", isOn: $volOn)
                    .toggleStyle(.button)
                    .onChange(of: volOn) {
                        _volOn in
                        progress += _volOn ? 0.25 : -0.25
                    }
                    .tint(.black)
            }
//HORIZONTALLY CREATES THE CHECKLIST BOX FOR "Seminar" AND MAKES IT TOGGLEABLE
            HStack{
            Image(systemName: semOn ? "checkmark.circle" : "circle")
                Toggle("Seminar", isOn: $semOn)
                    .toggleStyle(.button)
                    .onChange(of: semOn) {
                        _semOn in
                        progress += _semOn ? 0.25 : -0.25
                    }
                    .tint(.black)
            }
            
            }
        .padding()
        }
    }


struct CompletionView_Previews: PreviewProvider {
    static var previews: some View {
        let checklist = [
            Task(title: "FASFA"),
            Task(title: "Application"),
            Task(title: "Volunteer Hours"),
            Task(title: "Seminar")
        ]
        CompletionView(name : "Completion", tasks: checklist)

    }
}

