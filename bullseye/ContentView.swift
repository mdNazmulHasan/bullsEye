//
//  ContentView.swift
//  bullseye
//
//  Created by Md Nazmul Hasan on 10/12/19.
//  Copyright © 2019 Md Nazmul Hasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible:Bool=false
    //@State var knockKnockAlertIsVisible:Bool=false
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Put the bulls eye as close as you can to:")
                    Text("100")
                }
                HStack {
                    Text("1")
                    Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                    Text("100")
                }
                Button(action: {
                    print("Button pressed")
                    self.alertIsVisible=true
                }) {
                    Text("Hit me!")
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert.init(title: Text("Hello There"), message: Text("First  pop"), dismissButton: .default(Text("Awesome")))
                }
                
                HStack {
                    Button(action: {
                    }) { Text("Start Over")
                    }
                    
                    Text("Score:")
                    Text("9999")
                    Text("Round:")
                    Text("999:")
                    Button(action: {
                    }) { Text("Info")
                    }
                    
                    
                }
                /*Button(action: {
                 self.knockKnockAlertIsVisible=true
                 }) {
                 Text("Knock, Knock!")
                 }
                 .alert(isPresented: $knockKnockAlertIsVisible) { () -> Alert in
                 return Alert.init(title: Text("Who's there"), message: Text("Not you"), dismissButton: .default(Text("OW")))
                 }*/
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
