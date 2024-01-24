import Foundation

protocol KitchenAssistantProtocol {
    func checkWithdrawAndReturn(this ingredient: Ingredient) -> Ingredient?
}
