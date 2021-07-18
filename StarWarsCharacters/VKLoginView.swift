//
//  VKLoginView.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 18.07.2021.
//

import SwiftUI

struct VKLoginView: View {
    
    @State var logIn = ""
    
    @State var password = ""
    
    var body: some View {
        VStack {
            Image("logoVK")
                .resizable()
                .frame(width: 130 , height: 130, alignment: .center)
                .padding(.bottom, 120)
            
            VStack(spacing: 0) {
                TextField("Email or phone", text: $logIn)
                    .font(.system(size: 16))
                    .frame(height: 50)
                    .padding(.horizontal)
                
                Divider()
                
                SecureField("Password", text: $password)
                    .font(.system(size: 16))
                    .frame(height: 50)
                    .padding(.horizontal)
            }
            .overlay(RoundedRectangle.init(cornerRadius: 10).stroke(Color.init(UIColor.lightGray), lineWidth: 0.5))
            .padding(.horizontal, 16)
            
            Button(action: {
                print("LogIn")
            }, label: {
                Text("Log in")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50, alignment: .center)
                    .background(Color.init(#colorLiteral(red: 0.3173701763, green: 0.5050762892, blue: 0.7197144628, alpha: 1)))
                    .cornerRadius(10)
                    
            })
            .padding(.top, 16)
        }
    }
}

struct VKLoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VKLoginView()
            VKLoginView()
                .preferredColorScheme(.dark)
        }
    }
}

