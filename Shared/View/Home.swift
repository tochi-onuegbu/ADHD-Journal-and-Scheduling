//
//  Home.swift
//  ADHD Journal and Scheduling (iOS)
//
//  Created by Tochi Onuegbu on 10/22/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        HStack{
            
            // Side Bar...
            if isMacOS(){
                SideBar()
            }
        }
        .frame(width: isMacOS() ? getRect().width / 1.7 : nil, height: isMacOS() ? getRect().height - 180 : nil)
        .background(Color("Background").ignoresSafeArea())
        .preferredColorScheme(.light)
    }
    
    @ViewBuilder
    func SideBar()->some View{
        
        VStack{
            
            Text("Pocket")
                .font(.title2)
                .fontWeight(.semibold)
            
            //Add Button
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//Extending view to get Frame and get device os Types
extension View{
    
    func getRect()->CGRect{
        #if os(iOS)
        return UIScreen.main.bounds
        #else
        return NSScreen.main!.visibleFrame
        #endif
    }
    
    func isMacOS()->Bool{
        #if os(iOS)
        return false
        #endif
        return true
    }
}
