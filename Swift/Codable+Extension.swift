
import Foundation

extension Encodable {
    
    func asDictionary() -> [String: Any]? {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(self)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return dictionary as? [String: Any]
        } catch let error {
            print("asDictionary failed: Error: `\(error)`")
            return [:]
        }
    }
    
    func asData() -> Data? {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(self)
            return data
        } catch let error {
            print("asData failed: Error: `\(error)`")
            return nil
        }
    }
    
}

extension Decodable {
    
    static func toModel<T: Decodable>(data: Data) throws -> T {
        do {
            if T.self is String.Type {
                let str = String(decoding: data, as: UTF8.self)
                return str as! T
            } else {
                let decoder = JSONDecoder()
                let model = try decoder.decode(T.self, from: data)
                return model
            }
        } catch let error {
          print("toModel failed. Error: `\(error)`")
          throw error
        }
    }
    
}
