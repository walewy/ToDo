import Foundation

struct Todo: Decodable, Hashable {
    let id: Int
    let todo: String
    let completed: Bool
    let userId : Int
}

struct Query: Decodable {
    let todos: [Todo]
}

extension Todo {
    static let example = Todo(id: 1, todo: "Make xcode app", completed: false, userId: 1)
}
