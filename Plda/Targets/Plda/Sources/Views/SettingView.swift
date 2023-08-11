//
//  SettingView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("vector")
                    .padding(.top,0)
                    .padding(.horizontal,20)
                
                Spacer()
                Image("profile")
                    .padding(.horizontal,40)
                    .padding(.bottom,12)
                
                HStack(spacing : 0){
                    Spacer()
                    Text("닉네임")
                        .font(.Bold16)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: EditsettingView()) {
                        Image("rightarrow")
                    }
                    Spacer()
                }
                Spacer()
                Image("vector")
                    .padding(.top,0)
                    .padding(.horizontal,20)
                HStack{
                    Text("약관 및 이용 동의")
                        .font(.Bold16)
                        .foregroundColor(.Gray80)
                    Spacer()
                    NavigationLink(destination: TermsView()) {
                        Image("rightarrow")
                    }
                }.padding(.horizontal,25)
                HStack{
                    Text("개인정보 취급 방침")
                        .font(.Bold16)
                        .foregroundColor(.Gray80)
                    Spacer()
                    NavigationLink(destination: PrivacyView()) {
                        Image("rightarrow")
                    }
                }.padding(.horizontal,25)
                
                Image("vector")
                    .padding(.top,0)
                    .padding(.horizontal,20)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("MY")
                        .font(.Bold16)
                        .foregroundColor(.DarkGreen)
                        .accessibilityAddTraits(.isHeader)
                }
            }
            .navigationBarItems(
                leading:
                    Button(action: {}) {
                        Image("leftarrow").frame(width: 20, height: 18)
                    }
            )
            .background(Image("background")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all))
        }
    }
    
}

