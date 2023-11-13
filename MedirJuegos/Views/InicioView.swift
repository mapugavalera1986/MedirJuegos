//
//  InicioView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 13/11/23.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        NavigationStack{//Inicio navegar
            ScrollView{
                LazyVStack{
                    //ForEach(0...16,id:\.self){
                    ForEach(0...8,id:\.self){post in
                        JuegoCard(
                            juego: "Juego XX",
                            fecha: "XX-XX-20XX",
                            tiempo: "Horas"
                        )
                    }
                }
            }
        }//Fin navegar
    }
}

#Preview {
    InicioView()
}
