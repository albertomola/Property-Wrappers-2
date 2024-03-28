//
//  Vista3.swift
//  Property Wrappers
//
//  Created by alberto on 27/3/24.
//

import SwiftUI

struct Vista3: View {
    @EnvironmentObject var miDato : MiClase
    
    var body: some View {
        VStack{
            
            
            Text("Mi edad es \(miDato.edad)")
            Button("Decrementa 2 años"){
                miDato.edad -= 2
            }
        }
        .navigationTitle("Vista 3")
    }
    
    
}

struct Vista3_Previews: PreviewProvider {
    static var previews: some View {
        Vista3().environmentObject(MiClase())    }
}
