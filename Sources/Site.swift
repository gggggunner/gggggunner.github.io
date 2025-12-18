import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = GunnerSperos()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct GunnerSperos: Site {
    var name = "Gunner Speros"
    var titleSuffix = " – Gunner Speros"
    var url = URL(static: "https://www.gunnersperos.com")
    var builtInIconsEnabled = true

    var author = "Gunner Speros"

    var homePage = Home()
    var layout = MainLayout()
    
    var staticPages: [any StaticPage] = [
            Home(),
            iOSApps(),
            visionOSApps()
        ]
}
