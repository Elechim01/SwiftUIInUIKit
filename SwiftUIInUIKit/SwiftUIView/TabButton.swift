//
//  TabButton.swift
//  TwitterProfileScrolling (iOS)
//
//  Created by Michele Manniello on 09/05/21.
//

import SwiftUI

struct TabButton: View {
    var title : String
    @Binding var currentTab : String
    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation {
                currentTab = title
            }
        }, label: {
//             if i use LazyStack then the text is visivle fully in scrollview...
//            may be its a bug...
            LazyVStack(spacing: 12){
                    Text(title)
                        .fontWeight(.semibold)
                        .foregroundColor(currentTab == title ? .blue : .gray)
                        .padding(.horizontal)
                if currentTab == title{
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }else{
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    @State static var tab : String = "ciao"
    @Namespace  static var animation
    static var previews: some View {
        TabButton(title: "ciao", currentTab: $tab, animation: animation)
    }
}
