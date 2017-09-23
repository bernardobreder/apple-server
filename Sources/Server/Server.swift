//
//  Server.swift
//  socket
//
//  Created by Bernardo Breder on 30/10/16.
//  Copyright © 2016 Bernardo Breder. All rights reserved.
//

import Foundation

public protocol Server {
    
    func accept(timeout: Int?) throws -> Client
    
    func handler(server: Server, client: Client) throws
    
    func close()
    
    var closed: Bool { get }
    
}

extension Server {
    
    public func handler(server: Server, client: Client) throws {
        client.close()
    }
    
}
