//
//  ContentView.swift
//  CardSwiper
//
//  Created by DSIAdmin on 12/14/21.
//

import SwiftUI

struct ContentView: View {
    @State var numArray:[Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]
    
    var body: some View {
        
        GeometryReader{geo in
            
            // create the tab view
            TabView{
                // generate a rectangle for each card
                ForEach(0..<numArray.count){ index in
                    
                    ZStack{
                        Rectangle().frame(width: geo.size.width * (4/5), height: geo.size.height * (7/8), alignment: .center).foregroundColor(Color(.sRGB, red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1), opacity: 0.5)).cornerRadius(20).shadow(radius: 10)
                        Image(systemName: "\(index).circle").resizable().frame(width: geo.size.width/2, height: geo.size.height/2)
                    }
                    
                }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
