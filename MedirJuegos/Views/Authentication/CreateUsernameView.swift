//
//  CreateUsernameView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import SwiftUI

struct CreateUserNameView: View {
    @EnvironmentObject var
        registerViewModel:RegisterViewModel
    //@State var username=""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Create Username")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Pick a Username for your new account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal,24)
                TextField("User name",text: $registerViewModel.username)
                    .autocapitalization(.none)
                    .modifier(AuthTextfieldModifier())
                NavigationLink {
                    CreatePasswordView()
                        .navigationBarBackButtonHidden()
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
