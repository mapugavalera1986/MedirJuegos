//
//  PrincipalView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 21/09/23.
//

import SwiftUI

struct PrincipalView: View {
    var body: some View {//Inicio pantalla
        NavigationStack{//Inicio navegar
            TabView{//Inicio de las pestañas
                InicioView().tabItem(){
                    Image(systemName: "house")
                    Text("Inicio")
                }
                StatsView().tabItem(){
                    Image(systemName: "calendar")
                    Text("Historial")
                }
                StatsView().tabItem(){
                    Image(systemName: "chart.bar.fill")
                    Text("Estadísticas")
                }
                AjustesView().tabItem(){
                    Image(systemName: "gear")
                    Text("Ajustes")
                }
            }//Fin pantalla
            .accentColor(.indigo)
            //.navigationTitle
            //.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                ToolbarItem(placement: .navigationBarTrailing){   Image(systemName: "paperplane")
                }
            }
        }//Fin navegar
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView()
    }
}
