//
//  ContentView.swift
//  Property Wrappers
//
//  Created by alberto on 27/3/24.
//

import SwiftUI

class MiClase : ObservableObject{
    @Published var edad = 38
}

struct ContentView: View {
    
    @State private var seleccion:Int?
    @StateObject var miDato = MiClase()
    
    
    var body: some View {
        NavigationView{
        VStack{
        
            Text("Mi edad es: \(miDato.edad)")
            Button("Incrementa 1 año"){
                miDato.edad += 1
            }
            
            NavigationLink(destination: Vista2(), tag:1,selection: $seleccion){
                Button("Ir a Vista 2"){
                    seleccion = 1
                }
            }
        }
        .navigationTitle("Vista 1")
            
        }.environmentObject(miDato)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MiClase())
    }
}
