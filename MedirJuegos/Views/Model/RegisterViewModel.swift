//
//  RegisterViewModel.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import Foundation
import FirebaseAuth
import Combine

class RegisterViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    //@Published var isRegistrationComplete: Bool = false
    
    private var authService = AuthService.shared
    
    
    func register() {
        Task {
            do {
                try await authService.createUser(email: email, username: username, password: password)
    
                //isRegistrationComplete = true
            } catch {
                print("Error during registration: \(error.localizedDescription)")
            }
        }
    }
    
}
