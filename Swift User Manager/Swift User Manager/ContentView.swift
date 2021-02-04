//
//  ContentView.swift
//  Swift User Manager
//
//  Created by Farras Doko on 03/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var sex = ""
    @State var address = ""
    @State var phone = ""
    
    @State var goToNextScreen = false
    
    @State var passData: [User] = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                FieldForm(title: "Name", placeholder: "Angga", text: $name)
                FieldForm(title: "Sex", placeholder: "Male", text: $sex)
                FieldForm(title: "Address", placeholder: "Flaminggo Street No.90", text: $address)
                FieldForm(title: "Phone Number", placeholder: "0878 ayo kita balapan", text: $phone)
                
                Button("Submit", action: submitData)
                    .padding(.top, 20)
                    .disabled(name == "" || sex == "" || address == "" || phone == "")
                Button(action: seeInvoice, label: {
                    Text("View all users")
                        .font(.caption)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        .foregroundColor(.gray)
                })
                NavigationLink(
                    destination: InvoiceScreen(users: passData),
                    isActive: $goToNextScreen,
                    label: {})
            }
            .padding()
        }
    }
    
    func submitData() {
        let user = User(name: name, sex: sex, address: address, phone: phone)
        passData.append(user)
        
        clearData()
    }
    func clearData() {
        name = ""
        sex = ""
        address = ""
        phone = ""
    }
    func seeInvoice() {
        goToNextScreen = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
