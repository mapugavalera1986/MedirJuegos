//
//  StatsView.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 13/11/23.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        ScrollView{
            Spacer(minLength: 128)
            VStack {//Ficha con cifra central
                Text("Tu tiempo hasta el momento es")
                    .padding(4)
                Text("XX horas y XX minutos")
                    .font(.system(size: 28))
                    .foregroundColor(Color.indigo)
            }//Fin de ficha con cifra Central
            .padding(24)
            VStack{
                Text("Tu juego preferido hasta el momento es")
                    .padding(4)
                Text("Nombre del juego")
                    .font(.system(size: 28))
                    .foregroundColor(Color.indigo)
            }
        }
    }
}

#Preview {
    StatsView()
}
