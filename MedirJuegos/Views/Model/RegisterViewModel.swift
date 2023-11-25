//
//  RegisterViewModel.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import Foundation
import FirebaseAuth
import Combine


class RegisterViewModel:ObservableObject{
    
    
    @Published var email:String = ""
    @Published var password = ""
    @Published var username = ""
    
    
    func createUsername() async throws {
        try await AuthService.shared
            .createUser(email: email, username: username, password: password)
    }
}
