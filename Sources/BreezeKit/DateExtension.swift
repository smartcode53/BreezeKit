//
//  File.swift
//  
//
//  Created by Taha Broachwala on 2/12/24.
//

import Foundation

public extension Date {
    func convertToString(as format: DateFormat) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
    
    @available(iOS 15, *)
    static var currentDateAndTime = Date.now
}
