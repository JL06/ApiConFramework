import XCTest
@testable import ApiConFramework

final class ApiConFrameworkTests: XCTestCase {
    func testSession () {
        let obj: ApiConFramework = ApiConFramework(url: "https://api.themoviedb.org/3/movie/550?api_key=05e3d00ae13d42a1dda51e75a27fcc49&language=en-US")
        
        let exp = self.expectation(description: "sesion")
        obj.obtenerRecurso { info in
            if info != nil {
                exp.fulfill()
            }
        }
        waitForExpectations(timeout: 3, handler: nil)
        
        //let texto = String(decoding: obj.datosRecientes!, as: UTF8.self)
        //print("Resultado valor data: \(texto)")
    }
    
    func testSessionString () {
        let obj: ApiConFramework = ApiConFramework(url: "https://api.themoviedb.org/3/movie/550?api_key=05e3d00ae13d42a1dda51e75a27fcc49&language=en-US")
        
        let exp = self.expectation(description: "sesion")
        obj.obtenerRecurso(de: "https://api.themoviedb.org/3/movie/551?api_key=05e3d00ae13d42a1dda51e75a27fcc49&language=en-US") { info in
            if info != nil {
                exp.fulfill()
            }
        }
        waitForExpectations(timeout: 3, handler: nil)
        
        //let texto = String(decoding: obj.datosRecientes!, as: UTF8.self)
        //print("Resultado valor data: \(texto)")
    }
}
