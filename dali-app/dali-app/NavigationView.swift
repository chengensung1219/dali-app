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
   @State private var meClicked: Bool = false
   @State private var exploreClicked: Bool = false
   @State private var settingClicked: Bool = false
   
   var body: some View {
      HStack {
            Button(action: {
               self.blogClicked = true
               if self.blogClicked {
                  self.recommendClicked = false
                  self.meClicked = false
                  self.exploreClicked = false
                  self.settingClicked = false
               }
            }) {
               VStack {
                  Image(blogClicked ? "blogWhite" : "blogBlack")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 75, height: 30)
                  NavigationLink(destination: SettingView()) {
                     Text("Blog")
                        .font(.caption)
                  }
               }
               .frame(width: 75, height: 60)
               .background(blogClicked ? Color.orange : Color.white)
               .foregroundColor(blogClicked ? Color.white : Color.black)
               .cornerRadius(10)
            }
         
         Button(action: {
            self.recommendClicked = true
            if self.recommendClicked {
               self.blogClicked = false
               self.meClicked = false
               self.exploreClicked = false
               self.settingClicked = false
            }
         }) {
            VStack {
               Image(recommendClicked ? "recommendWhite" : "recommendBlack")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 75, height: 30)
               NavigationLink(destination: SettingView()) {
                  Text("Recommend")
                     .font(.caption)
               }
            }
            .frame(width: 75, height: 60)
            .background(recommendClicked ? Color.orange : Color.white)
            .foregroundColor(recommendClicked ? Color.white : Color.black)
            .cornerRadius(10)
         }
         
         Button(action: {
            self.meClicked = true
            if self.meClicked {
               self.blogClicked = false
               self.recommendClicked = false
               self.exploreClicked = false
               self.settingClicked = false
            }
         }) {
            VStack {
               Image(meClicked ? "meWhite" : "meBlack")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 75, height: 30)
               NavigationLink(destination: SettingView()) {
                  Text("Me")
                     .font(.caption)
               }
            }
            .frame(width: 75, height: 60)
            .background(meClicked ? Color.orange : Color.white)
            .foregroundColor(meClicked ? Color.white : Color.black)
            .cornerRadius(10)
         }
         
         Button(action: {
            self.exploreClicked = true
            if self.exploreClicked {
               self.blogClicked = false
               self.recommendClicked = false
               self.meClicked = false
               self.settingClicked = false
            }
         }) {
            VStack {
               Image(exploreClicked ? "exploreWhite" : "exploreBlack")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 75, height: 30)
               NavigationLink(destination: SettingView()) {
                  Text("Explore")
                     .font(.caption)
               }
            }
            .frame(width: 75, height: 60)
            .background(exploreClicked ? Color.orange : Color.white)
            .foregroundColor(exploreClicked ? Color.white : Color.black)
            .cornerRadius(10)
         }
         
         Button(action: {
            self.settingClicked = true
            if self.settingClicked {
               self.blogClicked = false
               self.recommendClicked = false
               self.meClicked = false
               self.exploreClicked = false
            }
         }) {
            VStack {
               Image(settingClicked ? "settingWhite" : "settingBlack")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 75, height: 30)
               NavigationLink(destination: SettingView()) {
                  Text("Setting")
                     .font(.caption)
               }
            }
            .frame(width: 75, height: 60)
            .background(settingClicked ? Color.orange : Color.white)
            .foregroundColor(settingClicked ? Color.white : Color.black)
            .cornerRadius(10)
         }
      }.border(Color.gray, width: 1)
   }
}

#Preview {
    NavigationView()
}
