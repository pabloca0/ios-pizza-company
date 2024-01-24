import Foundation

protocol ClientProtocol {
    func pay() -> Double
    func makeAnOrder() -> Order
}
