//
//  ContentView.swift
//  BetterRest
//
//  Created by Ifang Lee on 9/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()

    var body: some View {
        VStack{
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
            DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
                .labelsHidden()

            // wrap in a form for better UI
            Form {
                DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                DatePicker("", selection: $wakeUp, displayedComponents: .hourAndMinute)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
