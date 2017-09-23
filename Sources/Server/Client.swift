//
//  Client.swift
//  socket
//
//  Created by Bernardo Breder on 30/10/16.
//  Copyright © 2016 Bernardo Breder. All rights reserved.
//

import Foundation

public protocol Client {
    
    var timeout: Int { get set }
    
    func read() throws -> UInt8
    
    func write(data: Data) throws
    
    func close()
    
    var closed: Bool { get }
    
}
