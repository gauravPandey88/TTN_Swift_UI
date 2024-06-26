//
//  ContentView.swift
//  TTNSwiftUI
//
//  Created by Gaurav Pandey on 19/06/24.
//

import SwiftUI
enum Route: Hashable {
    case home
    case movieDetail(MovieList)
}

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showingAlert: Bool = false
    @Binding var path: NavigationPath
    
    var body: some View {
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
            
            TextField("", text: $email, prompt: Text("Email").foregroundStyle(.white))
                .tint(.white)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxHeight: 50.0)
                .foregroundStyle(.white)
                .padding(.leading)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(red: 0.3, green: 0.3, blue: 0.3)))
            
            SecureField("", text: $password, prompt: Text("Password").foregroundStyle(.white))
                .tint(.white)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxHeight: 50.0)
                .foregroundColor(.white)
                .padding(.leading)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(red: 0.3, green: 0.3, blue: 0.3)))
                .padding(.bottom)
            
            Button {
                if !email.isEmpty && !password.isEmpty {
                    path.append(Route.home)
                } else {
                    showingAlert = true
                }
            } label: {
                Text("Login")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 1, green: 0.9, blue: 0.6))
                    .cornerRadius(10)
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text("Please fill all fields."), dismissButton: .default(Text("OK")))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
    
}
