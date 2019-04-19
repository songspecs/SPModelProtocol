//
//  ModelProtocol.swift
//  SwiftFrame
//
//  Created by 宋璞 on 2019/4/17.
//  Copyright © 2019 宋璞. All rights reserved.
//

import UIKit
import SwiftyJSON

public protocol ModelProtocol {
    init?(json: JSON)
}
