//
//  File.swift
//  
//
//  Created by Taha Broachwala on 2/12/24.
//

import Foundation

public extension String {
    
    /// An empty string
    static var empty: String = ""
    
    @available(iOS 16.0, *)
    var isEmailValid: Bool {
        let emailPattern = #"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"#
        
        guard let emailRegex = try? Regex(emailPattern) else {
            return false
        }
        
        if self.firstMatch(of: emailRegex) == nil {
            return false
        }
        
        return true
        
    }
}

extension String: Error {
    
}


