//
//  ContentView.swift
//  AntonCard
//
//  Created by Veldanov, Anton on 3/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    
    ZStack{
      Color(red:0.13, green:0.59, blue:0.95, opacity: 0.7)
        .edgesIgnoringSafeArea(.all)
      VStack {
        
        Image("anton")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 200, height: 200
        )
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 5)
        )
        Text("Anton Veldanov")
          .font(Font.custom("Rocksalt-regular", size: 40))
          .foregroundColor(.white)
          .bold()
        
        Text("iOS Developer")
          .foregroundColor(.white)
          .font(.system(size: 25))
        
        Divider()
        
        InfoView(text: "408-242-4018", imageName: "phone.fill")
        
        InfoView(text: "anton.veldanov@gmail.com", imageName: "envelope.fill")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


