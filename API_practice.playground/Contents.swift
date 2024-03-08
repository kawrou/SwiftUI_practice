import UIKit

//if let url = URL(string: "https://api.example.com/data") {
//    print("Valid URL: \(url)")
//} else {
//    print("Invalid URL")
//}

//Model
struct Result: Codable {
    let id: Int
    let title: String
    let body: String
}

//@Published var posts: [Result] = []

// Function to met a fetch request
func loadData() {

    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        if let data = data {
            let decoder = JSONDecoder()
            if let results = try? decoder.decode([Result].self, from: data){
                for result in results {
                    print("id: \(result.id)")
                    print("title: \(result.title)")
                    print("body: \(result.body)")
                }
            }
        }
    }
    
// Async
//    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
//        print("Invalid URL")
//        return
//    }
//    
//    do {
//        let (data, _) = try await URLSession.shared.data(from: url)
//        let results = try JSONDecoder().decode([Result].self, from: data)
//        for result in results {
//            print("id \(result.id)")
//            print("title \(result.title)")
//            print("body \(result.body)")
//        }
//    } catch {
//        print("Error fetching or decoding data: \(error)")
//    }

// Synchronous
//    do {
//        let data = try Data(contentsOf: url)
//        let results = try JSONDecoder().decode([Result].self, from: data)
//        for result in results {
//            print(result.id)
//            print(result.title)
//            print(result.body)
//        }
//    } catch {
//        print("Error fetching or decoding data: \(error)")
//    }
}
// Call function
loadData()
//https://jsonplaceholder.typicode.com/posts
