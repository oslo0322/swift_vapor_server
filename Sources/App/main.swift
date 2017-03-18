import Vapor

let drop = Droplet()

drop.get("/name", ":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)!"
    }
    return "Hello World!"
}

drop.run()
