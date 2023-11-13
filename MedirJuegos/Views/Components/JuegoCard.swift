//
//  JuegoCard.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 13/11/23.
//

import SwiftUI

struct JuegoCard: View {
    //Aquí van los valores de la base de datos
    var juego: String
    var fecha: String
    var tiempo: String
    
    var body: some View {
        VStack{
            VStack{//Empieza la tarjeta
                Text(fecha)
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
                    .padding(2)
                Text(juego)
                    .font(.system(size: 24, weight: .bold))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(4)
                Text(tiempo)
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
                    .padding(2)
            }//Finaliza la tarjeta
            .frame(width: 320, height: 140)
            .background(.indigo)
            .cornerRadius(32)
        }
        .padding(4)
    }
}

#Preview {
    JuegoCard(
        juego: "Doom 64",
        fecha: "12-12-2022",
        tiempo: "1 hora"
    )
}
