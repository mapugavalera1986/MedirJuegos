//
//  AddEmailView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import SwiftUI

struct AddEmailView: View {
    @State var email=""
    var body: some View {
        VStack(spacing: 12) {
            Text("Add Your Email")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top)
            Text("You will use this email to sign in in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal,24)
            TextField("Email",text: $email)
                .autocapitalization(.none)
                .modifier(AuthTextfieldModifier())
            Button {
                
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
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
