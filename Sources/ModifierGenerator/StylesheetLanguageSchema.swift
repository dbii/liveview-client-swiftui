//
//  StylesheetLanguageSchema.swift
//
//
//  Created by Carson Katri on 1/2/24.
//

import Foundation

/// A JSON representation of the available modifiers.
/// This structure is used by the LiveView Native VS Code extension to provide completions for modifiers.
struct StylesheetLanguageSchema: Encodable {
    let format: String
    let framework: String
    var modifiers = [String:[Signature]]()
    var enums = [String:[String]]()
    var types = Set<String>()
    var deprecations = [String:String]()
    
    struct Signature: Encodable {
        let parameters: [Parameter]
        
        func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encode(parameters)
        }
        
        struct Parameter: Encodable {
            let firstName: String
            let secondName: String?
            let type: String
        }
    }
}
