//
//  ContentViewModel.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import FirebaseAuth
import Foundation
import Combine

class ContentViewModel:ObservableObject{
    private let service = AuthService.shared
    @Published var userSession:FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>()
    
    init(){
        setupSuscriber()
    }
    func setupSuscriber(){
        service.$userSession.sink{ [weak self ]
            userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellable)
    }
}
