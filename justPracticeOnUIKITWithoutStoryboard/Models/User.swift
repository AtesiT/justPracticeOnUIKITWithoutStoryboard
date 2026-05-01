import Foundation

struct User {
    let id: UUID
    let name: String
    let surname: String
    let age: Int?
    let number: Int?
    
    //  MARK: - Description
    let description: UserDescription?
}

struct UserDescription {
    let hairColor: String?
    let eyeColor: String?
    let height: String?
    let weight: String?
    
    init(hairColor: String? = nil, eyeColor: String? = nil, height: String? = nil, weight: String? = nil) {
        self.hairColor = hairColor
        self.eyeColor = eyeColor
        self.height = height
        self.weight = weight
    }
}


