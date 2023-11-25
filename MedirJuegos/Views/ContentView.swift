//
//  ContentView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var registerViewModel = RegisterViewModel()
    @StateObject var viewModel = ContentViewModel()
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View{
        if viewModel.userSession == nil{
            LoginView()
                .environmentObject(loginViewModel)
        } else{
            PrincipalView()
        }
    }
}
