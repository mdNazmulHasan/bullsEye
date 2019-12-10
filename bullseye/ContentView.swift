//
//  ContentView.swift
//  bullseye
//
//  Created by Md Nazmul Hasan on 10/12/19.
//  Copyright © 2019 Md Nazmul Hasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to my first app")
                .fontWeight(.bold)
                .foregroundColor(Color.green)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hit me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
