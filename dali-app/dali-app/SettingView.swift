//
//  SettingView.swift
//  dali-app
//
//  Created by Seth on 6/30/24.
//

import SwiftUI

struct SettingView: View {
   enum ButtonType {
      case none
      case SavedPlace
      case RecentSearches
      case Preference
      case Notification
      case Appearance
      case Language
   }
   @State private var clickIndicator: ButtonType = .none
   
    var body: some View {
       VStack {
          Spacer()
          Divider()
          
          Button(
            action: {
               withAnimation {
                  self.clickIndicator = .SavedPlace
               };
               DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                  withAnimation {
                     self.clickIndicator = .none
                  }
               }
            }) {
                HStack {
                   Text("Saved Places")
                      .foregroundColor(Color.black)
                   
                   Spacer()
                   
                   Image("goTo")
                      .resizable()
                      .frame(width: 15, height: 15)
                }
                .padding()
             }
             .background(clickIndicator == .SavedPlace ? Color.gray : Color.white)
          
          Divider()
             .padding(.horizontal)
          
          Button(
            action: {
               withAnimation {
                  self.clickIndicator = .RecentSearches
               };
               DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                  withAnimation {
                     self.clickIndicator = .none
                  }
               }
            }
            
          ) {
             HStack {
                Text("Recent Searches")
                   .foregroundColor(Color.black)
                
                Spacer()
                
                Image("goTo")
                   .resizable()
                   .frame(width: 15, height: 15)
             }
             .padding()
          }
          .background(clickIndicator == .RecentSearches ? Color.gray : Color.white)
          
          Divider()
             .padding(.horizontal)
          
          Button(action: {
             withAnimation {
                self.clickIndicator = .Preference;
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                   withAnimation {
                      self.clickIndicator = .none
                   }
                }
             }
          }) {
             HStack {
                Text("Preference")
                   .foregroundColor(Color.black)
                
                Spacer()
                
                Image("goTo")
                   .resizable()
                   .frame(width: 15, height: 15)
             }
             .padding()
          }
          .background(clickIndicator == .Preference ? Color.gray : Color.white)
       }
       .border(Color.black, width: 2)
    }
}

#Preview {
    SettingView()
}
