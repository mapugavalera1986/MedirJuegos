//
//  CompleteSignUpView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/11/23.
//

import SwiftUI

struct CompleteSignUpView: View {
       @EnvironmentObject var registerViewModel:RegisterViewModel
    var body: some View {
        VStack(spacing:12){
            Text("Welcome to Instagram")
                .font(.title)
            Text("Click bellow to continue")
                .font(.footnote)
                .foregroundColor(.gray)
            Button {
                Task{
                    try await
                    registerViewModel.createUsername()
                }
            } label: {
                Text("Ok")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            
        } // End VStack
    }
}
