//
//  ContentView.swift
//  mashup-25-driller
//
//  Created by Gary Smith on 15/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Driller App")
                .padding()
            VStack {
                HStack {
                    Form {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                        Label("Manual Calculation", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                        
                        Label("Auto Calculation", systemImage: "42.circle")
                        
                    }
                    .padding([.top, .leading, .trailing])
                    
                }
            }
            VStack{
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
                }
            }
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

class CreekCalculator {
    var radius = 0.0
    var horizToCreekCentre = 0.0
    var vertToCreekCentre = 0.0
    var rodLength = 0.0
    var angleA = 1.0
    var angleB = 1.0
    
    func getRadius() -> Double {
        let horizontalToCreekCentreSquared = pow(2 * horizToCreekCentre, 2)
        let verticalToCreekCentreSquared = pow(vertToCreekCentre, 2)
        if(vertToCreekCentre > 0){
                radius = (horizontalToCreekCentreSquared + 4 * verticalToCreekCentreSquared)/(8 * vertToCreekCentre)
            } else if (vertToCreekCentre <= 0){
                radius = 1
            }
        return radius
    }
    
    func setHorizToCreekCentre(htcc : Double) {
        horizToCreekCentre = htcc
    }
    func setVertToCreekCentre(vtcc : Double) {
        vertToCreekCentre = vtcc
    }
    func setRodLength(rodLen : Double) {
        rodLength = rodLen
    }
    
    func getAngleA() -> Double {
        angleA = sin((rodLength/2)/radius)
        return angleA
    }
    func getAngleB() -> Double {
        angleB = 180 - angleA
        return angleB
    }
    
}
