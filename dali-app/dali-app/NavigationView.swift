//
//  NavigationView.swift
//  dali-app
//
//  Created by Seth on 6/30/24.
//

import SwiftUI

struct NavigationView: View {
   @State private var blogClicked: Bool = false
   @State private var recommendClicked: Bool = false
   
   var body: some View {
      HStack {
            Button(action: {
               self.blogClicked = true
               if self.blogClicked {
                  self.recommendClicked = false
               }
            }) {
               VStack {
                  Image(blogClicked ? "blogWhite" : "blogBlack")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 100, height: 30)
                  NavigationLink(destination: HomeView()) {
                     Text("Blog")
                  }
               }
               .frame(width: 100, height: 60)
               .background(blogClicked ? Color.orange : Color.white)
               .foregroundColor(blogClicked ? Color.white : Color.black)
               .cornerRadius(15)
            }
         
         Button(action: {
            self.recommendClicked = true
            if self.recommendClicked {
               self.blogClicked = false
            }
         }) {
            NavigationLink(destination: HomeView()) {
               Text("Recommend")
                  .frame(width: 100, height: 60)
                  .background(recommendClicked ? Color.orange : Color.white)
                  .foregroundColor(recommendClicked ? Color.white : Color.black)
                  .cornerRadius(15)
            }
         }
      }.border(Color.gray, width: 1)
   }
}

#Preview {
    NavigationView()
}
