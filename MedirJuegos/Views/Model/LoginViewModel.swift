//
//  LoginViewModel.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/11/23.
//

import Foundation
import FirebaseAuth
import Combine

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func login() async {
        do {
            try await AuthService.shared.login(email: email, password: password)
            // Login successful, update UI or perform any additional tasks
        } catch {
            print("Login error: \(error.localizedDescription)")
            // Handle the login error (e.g., show an alert to the user)
        }
    }
}
