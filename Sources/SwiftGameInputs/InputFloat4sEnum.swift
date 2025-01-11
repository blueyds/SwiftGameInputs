import Foundation

public protocol InputFloat4sEnum:CaseIterable, RawRepresentable where RawValue == Int{
	var value: SIMD4<Float>? { get }
	func set(to: SIMD4<Float>)
}
extension InputFloat4sEnum{
	public var value: SIMD4<Float>?{
		InputManager.shared.get(float4ID: self.rawValue)!
	}
	public func set(to value: SIMD4<Float>?){
		InputManager.shared.set(float4ID: self.rawValue, to: value)
	}
}
