//
//  User.swift
//  MedirJuegos
//
//  Created by Mario Augusto Puga Valera on 17/11/23.
//

import Foundation

struct User:Identifiable,Codable,Hashable {
    let id:String
    var username:String
    var fullname:String?
    let email:String
}

extension User{
    static var MOCK_USERS:[User]=[
        .init(id:UUID().uuidString, username: "Cosquillas", fullname: "Sr. Cosquillas", email: "cosq@gmx.com"),
        .init(id:UUID().uuidString, username: "spcl", fullname: "Sr. Especial", email: "spcl@gmx.com"),
    ]
}
