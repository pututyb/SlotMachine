//
//  ContentView.swift
//  SlotMachine
//
//  Created by Putut Yusri Bahtiar on 08/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var slot1 = "sword"
    @State private var slot2 = "jack"
    @State private var slot3 = "mask"
    @State private var slot21 = "sword"
    @State private var slot22 = "jack"
    @State private var slot23 = "mask"
    @State private var credit = 1000
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                
            
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack {
                    Image(slot1)
                    Image(slot2)
                    Image(slot3)
                }
                Spacer()
                Button {
                    //Logic Code
                    
                    let slotNames = ["sword", "jack", "mask"]
                    let slotNames1 = ["sword", "jack", "mask"]
                    let slotNames2 = ["sword", "jack", "mask"]
                    
                    let slot1Rand = slotNames.randomElement()!
                    let slot2Rand = slotNames1.randomElement()!
                    let slot3Rand = slotNames2.randomElement()!
                    
                    slot1 = String(slot1Rand)
                    slot2 = String(slot2Rand)
                    slot3 = String(slot3Rand)
                    
                    if slot1 == slot2, slot1 == slot3  {
                        credit += 30
                    }else {
                        credit -= 10
                    }
                    
                } label: {
                    Image("buybutton")
                }
                Text("Credits")
                    .foregroundColor(.white)
                Text("$ \(credit)")
                //Text(String(credit))
                    .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
