//
//  User.swift
//  ToDoFire
//
//  Created by Max on 03.01.2023.
//

import Foundation
import Firebase

struct UserInit {
    
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
