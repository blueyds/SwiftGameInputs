import Foundation
import simd

public protocol InputFloat8sEnum:CaseIterable, RawRepresentable where RawValue == Int{
	var value: SIMD8<Float>? { get }
	func set(to: SIMD8<Float>)
}
extension InputFloat8sEnum{
	public var value: SIMD8<Float>?{
		InputManager.shared.get(float8ID: self.rawValue)!
	}
	public func set(to value: SIMD8<Float>?){
		InputManager.shared.set(float8ID: self.rawValue, to: value)
	}
}
