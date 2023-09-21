//
//  PrincipalView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/09/23.
//

import SwiftUI

struct PrincipalView: View {
    var body: some View {
        TabView{//Inicio de las pestañas
            VerA().tabItem(){
                Image(systemName: "house")
                Text("Inicio")
            }
            VerB().tabItem(){
                Image(systemName: "calendar")
                Text("Historial")
            }
            VerB().tabItem(){
                Image(systemName: "chart.bar.fill")
                Text("Estadísticas")
            }
            VerB().tabItem(){
                Image(systemName: "gear")
                Text("Ajustes")
            }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
