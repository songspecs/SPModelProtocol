//
//  MikerError.swift
//  SwiftFrame
//
//  Created by 宋璞 on 2019/4/17.
//  Copyright © 2019 宋璞. All rights reserved.
//

import UIKit

/// 请求超时
let NERTIMEOUT = 500000

/// JSON转换错误
public struct MikerError: Error {
    public let domain: String
    public let code: Int
    public let message: String
    
    
    public init(_ domain: String, code: Int, message: String) {
        self.domain = domain
        self.code = code
        self.message = message
    }
    
    public init(_ code: Int, domain: String = "client error") {
        self.domain = domain
        self.code = code
        self.message = "请求超时"
    }
    
    
    /// NSErrore类型装换成MikerError
    ///
    /// - Parameter error:
    public init(error: NSError?) {
        if let error = error {
            self.domain = error.domain
            self.code = error.code
            self.message = error.localizedDescription
        } else {
            self.domain = "NSError error"
            self.code = NERTIMEOUT
            self.message = "请求超时"
        }
    }
    
}
