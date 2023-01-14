//
//  main page.swift
//  SpeechRec
//
//  Created by Hofa on 19/06/1444 AH.
//

import SwiftUI

struct main_page: View {
    var body: some View {
        VStack{
            ZStack{
                Color("L1")
                .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(Color("L2"))
                    .frame(width: 850, height: 150)
                    .position(x:416,y:20)
                
                Text("CanDo")
                    .font(.system(size: 55))
                    .bold()
                    .foregroundColor(.black).position(x:416,y:30)
                
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(Color("L2"))
                    .frame(width: 750, height: 900)
                    .position(x:415,y:580)
                
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(Color("ForTextBackground"))
                    .frame(width: 680, height: 650)
                    .position(x:415,y:500)
                
                Image("tree")
                    .cornerRadius(30)
                    .position(x:415,y:495)
                
    
                    RoundedRectangle(cornerRadius: 30.0)
                        .fill(Color("ForTextBackground"))
                        .frame(width: 650, height: 90)
                        .position(x:415,y:920)
                   
              
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(Color("L2"))
                    .frame(width: 850, height: 120)
                    .position(x:416,y:1120)
                HStack{
                    Text("Tree house sketch with color").font(.title).bold().foregroundColor(.black)
                        .position(x:310,y:920)
                    Image(systemName: "mic.fill")
                        .font(.system(size: 35))
                        .foregroundColor(Color("ICONTEXT"))
                        .frame(width: 400.0, height: 400.0)
                        .position(x:270,y:920)
                        
                }
            }
        }
    }
}

struct main_page_Previews: PreviewProvider {
    static var previews: some View {
        main_page()
    }
}
