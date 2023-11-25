//
//  CreatePasswordView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/11/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @EnvironmentObject var
        registerViewModel:RegisterViewModel
    
    //@State var password=""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Create a Password")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Your password must be at least 6 characters")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal,24)
                SecureField("Password",text: $registerViewModel.password)
                    .autocapitalization(.none)
                    .modifier(AuthTextfieldModifier())
                SecureField("Confirm Password",text: $registerViewModel.password)
                    .autocapitalization(.none)
                    .modifier(AuthTextfieldModifier())
                NavigationLink {
                    CompleteSignUpView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                Spacer()

                
            }//End VStack main
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Image(systemName:"chevron.left")
                .imageScale(.large)
                .onTapGesture {
                    /** This code "kills" the current view and gets back to its predecesor **/
                    self.dismiss()
                }
              }
            }
        }// end navigationstack
    }
}

