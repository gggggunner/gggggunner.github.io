import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            content
            MyFooter()
            IgniteFooter()
        }
    }
}
