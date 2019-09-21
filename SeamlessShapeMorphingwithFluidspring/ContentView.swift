//
//  ContentView.swift
//  SeamlessShapeMorphingwithFluidspring
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var morph = false
    
    var body: some View {
        
        Rectangle()
            .frame(width: 300, height: 300)
            .foregroundColor(morph ? .blue : .green)
            .cornerRadius(morph ? 300/2 : 0)
            .animation(.spring())
            .onTapGesture {
                self.morph.toggle()
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
