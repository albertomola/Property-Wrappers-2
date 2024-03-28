//
//  BindingVista.swift
//  Property Wrappers
//
//  Created by alberto on 27/3/24.
//

import SwiftUI

struct Vista2: View {
    
    @EnvironmentObject var miDato : MiClase
    @State private var seleccion : Int?
    
    
    var body: some View {
        NavigationView{
        VStack{
            
            
            Text("Mi edad es \(miDato.edad)")
            Button("Incrementa 2 años"){
                miDato.edad += 2
            }
            NavigationLink(destination: Vista3(), tag:1,selection: $seleccion){
                Button("Ir a Vista 3"){
                    seleccion = 1
                }
            }
            
            
        }
        .navigationTitle("Vista 2")
    }
    }
}

struct BindingVista_Previews: PreviewProvider {
    static var previews: some View {
        Vista2().environmentObject(MiClase())
    }
}
