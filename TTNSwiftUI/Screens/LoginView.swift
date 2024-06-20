//
//  ContentView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 19/06/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    
    var body: some View {
        NavigationView {
            //Main View
            VStack {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 10.0, trailing: 0))
                
                
                Text("Please login to continue with your account")
                    .foregroundStyle(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                
                Text("Email Address")
                    .foregroundStyle(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                //Email View
                VStack {
                    
                    TextField("", text: $email, prompt: Text("Email").foregroundStyle(.white))
                        .tint(.white)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .frame(maxHeight: 50.0)
                        .foregroundStyle(.white)
                        .padding(.leading)
                    
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(red: 0.3, green: 0.3, blue: 0.3)))
                
                Text("Password")
                    .foregroundStyle(.white)
                    .font(.system(size: 16, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                
                //Password View
                VStack {
                    TextField("", text: $password, prompt: Text("Password").foregroundStyle(.white))
                        .tint(.white)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .frame(maxHeight: 50.0)
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(red: 0.3, green: 0.3, blue: 0.3)))
                .padding(.bottom)
                
                VStack {
                    NavigationLink(destination: HomeView()) {
                        Text("Login")
                    }
                    .navigationBarBackButtonHidden(true)
                    
                }
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.black)
                .frame(maxWidth: 250.0, maxHeight: 50.0)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(red: 1, green: 0.9, blue: 0.6))
                )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
        }

    }
    
}

#Preview {
    LoginView()
}
