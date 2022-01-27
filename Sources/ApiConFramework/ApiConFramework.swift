import Foundation

public class ApiConFramework {
    private var urlTexto: String
    var datosRecientes: Data?
    
    public init(url: String) {
        self.urlTexto = url
    }
    
    public func obtenerRecurso(finalizo: @escaping (Data?) -> ()) {
        let urlSes = URLSession(configuration: URLSessionConfiguration.default)
        let urlS = URL(string: self.urlTexto)
        
        urlSes.dataTask(with: urlS!) { info, response, error in
            DispatchQueue.main.async {
                self.datosRecientes = info
            }
            finalizo(info)
        }.resume()
    }
    
    public func obtenerRecurso(de url: String, finalizo: @escaping (Data?) -> ()) {
        self.urlTexto = url
        self.obtenerRecurso(finalizo: finalizo)
    }

    
}
