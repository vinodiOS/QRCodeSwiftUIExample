//
//  ContentView.swift
//  QRScanSwiftUI
//
//  Created by Vinod Jagtap on 25/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var result: String?
    
    var body: some View {
        VStack(spacing: 30) {
            Text(result ?? "")
            Button("Scan QR Code") {
                self.isPresented = true
            }
        }.sheet(isPresented: $isPresented) {
            QRScanner(result: self.$result)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
