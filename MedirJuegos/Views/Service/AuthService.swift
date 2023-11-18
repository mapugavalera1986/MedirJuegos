//
//  AuthService.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import Foundation
import FirebaseAuth
import Combine

class AuthService {
    
    // Contenido del publicador
    @Published var userSession: FirebaseAuth.User?
    
    // Patrón singleton
    static let shared = AuthService()
    
    private init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
        do {
            let credential = try await Auth.auth().signIn(withEmail: email, password: password)
            // El inicio de sesión fue exitoso, actualiza la sesión del usuario
            self.userSession = credential.user
        } catch {
            throw error
        }
    }
    
    func createUser(email: String, username: String, password: String) async throws {
        do {
            let credential = try await Auth.auth().createUser(withEmail: email, password: password)
            
            // Configura el perfil del usuario (puedes agregar más información si es necesario)
            //let changeRequest = credential.user.createProfileChangeRequest()
            //changeRequest.displayName = username
            //try await changeRequest.commitChanges()
            
            // El usuario se ha creado correctamente, actualiza la sesión del usuario
            self.userSession = credential.user
        } catch {
            throw error
        }
    }
    
    func loadUser() async throws {
        guard let currentUser = Auth.auth().currentUser else {
            throw AuthError.userNotAvailable
        }
        
        // Actualiza la sesión del usuario
        self.userSession = currentUser
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            // La sesión del usuario se ha cerrado correctamente
            self.userSession = nil
        } catch {
            print("Error al cerrar sesión: \(error.localizedDescription)")
        }
    }
    
    // Posibles errores específicos de la autenticación
    enum AuthError: Error {
        case userNotAvailable
    }
}

