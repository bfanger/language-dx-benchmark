import Foundation

struct Data: Codable {
    var a: Int
    var b: Int
}

let json = "{ \"a\": 1, \"b\": 4 }".data(using: .utf8)!
let decoder = JSONDecoder()
let data = try decoder.decode(Data.self, from: json)

print(data.a + data.b) 
