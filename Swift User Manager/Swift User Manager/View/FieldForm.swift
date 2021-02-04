//
//  FieldForm.swift
//  Swift User Manager
//
//  Created by Farras Doko on 03/02/21.
//

import SwiftUI

struct FieldForm: View {
    
    var title: String = "Title"
    var placeholder: String = "input text here"
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var onCommit: () -> Void = {}
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text(title)
            TextField(placeholder, text: $text, onCommit: onCommit)
                .keyboardType(keyboardType)
        })
    }
}

struct FieldForm_Previews: PreviewProvider {
    static var previews: some View {
        FieldForm(text: .constant("Title"))
    }
}
