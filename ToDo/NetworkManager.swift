import Foundation

final class NetworkManager: ObservableObject {
    
    init () {
        fetchTodos()
    }
    
    static let shared = NetworkManager()
    
    @Published var todos = [Todo]()
    
    func fetchTodos() {
        guard let url = URL(string: "https://dummyjson.com/todos") else {
            print("Invalid URL")
            return
        }
        let fetchRequest = URLRequest(url: url)
        
        DispatchQueue.global(qos: .background).async {
            URLSession.shared.dataTask(with: fetchRequest) { [weak self] (data, response, error) -> Void in
                if error != nil {
                    print("Error in session is not nil")
                } else {
                    
                    let httpResponse = response as? HTTPURLResponse
                    print("Status code: \(String(describing: httpResponse?.statusCode))")
                    
                    guard let safeData = data else { return }
                    
                    if let decodedQuery = try? JSONDecoder().decode(Query.self, from: safeData) {
                        
                        self?.todos = decodedQuery.todos
                        
                    }
                    
                    
                    
                }
            }.resume()
        }
    }
    
}
