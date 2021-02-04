//
//  InvoiceScreen.swift
//  Swift User Manager
//
//  Created by Farras Doko on 03/02/21.
//

import SwiftUI

struct InvoiceScreen: View {
    
    var users: [User]
    @State var text = ""
    
    var body: some View {
        TextEditor(text: $text)
            .onAppear {
                var txt: String = ""
                for user in users {
                    txt += "\n---------------------\n"
                    txt += "\(user.name) \nwith gender \(user.sex) \nlive in \(user.address) \nPhone Number: \(user.phone)"
                }
                text = txt
            }
    }
}

struct InvoiceScreen_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceScreen(users: [User(name: "Doko", sex: "Male", address: "Batam", phone: "021301823091")])
    }
}
