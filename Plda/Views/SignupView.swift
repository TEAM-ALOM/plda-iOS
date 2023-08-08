//
//  SignupView.swift
//  Plda
//
//  Created by 최유경 on 2023/08/09.
//

import SwiftUI

var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    return formatter
}

struct SignupView: View {
    @State private var birthDate = Date()
    
    var body: some View {
        VStack{
            Spacer()
            HStack(spacing:0){
                Text("성별")
                    .font(.Bold16)
                    .foregroundColor(.DarkGreen)
                Text("과 ")
                    .font(.Bold16)
                    .foregroundColor(.black)
                
                Text("나이")
                    .font(.Bold16)
                    .foregroundColor(.DarkGreen)
                
                Text("를 알려 주세요!")
                    .font(.Bold16)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading,20)
            .padding(.bottom,40)
            HStack{
                Text("성별")
                    .font(.Bold16)
                    .foregroundColor(.Gray80)
                    .padding(.leading,20)
                Spacer()
            }
            HStack(spacing:10){
                HStack{
                    Spacer()
                    Text("여성")
                        .font(.Bold16)
                        .foregroundColor(.DarkGreen)
                    Spacer()
                }
                .padding(.vertical,10)
                .background(Color.Gray40)
                .cornerRadius(12)
                
                HStack{
                    Spacer()
                    Text("남성")
                        .font(.Bold16)
                        .foregroundColor(.Gray80)
                    Spacer()
                }
                .padding(.vertical,10)
                .background(Color.Gray20)
                .cornerRadius(12)
            }
            .padding(.horizontal,20)
            .padding(.top,0)
            .padding(.bottom,60)
            
            HStack{
                Spacer()
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                    Text("나이 (출생연도)")
                        .font(.Bold16)
                        .foregroundColor(.Gray80)
                }
            }.padding(.horizontal,20)
            
            Image("Vector_8")
                .padding(.top,0)
                .padding(.horizontal,20)
            
            Spacer()
            
            HStack{
                Spacer()
                Text("프로필 설정하러 가기")
                    .font(.Bold16)
                    .foregroundColor(.white)
                    .padding(.vertical,9)
                Spacer()
            }
            .background(Color.DarkGreen)
            .cornerRadius(12)
            .padding(.bottom,100)
            .padding(.horizontal,20)
        }
        .background(Image("background")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all))
    }
}
