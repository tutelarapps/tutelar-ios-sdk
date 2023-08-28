# Tutelar iOS SDK

Tutelar are risk management experts. Our high powered tech-enabled solutions simplify fraud risk management and automates auxiliary business processes enabling companies to focus on its core products and services.

## Requirements
### iOS
1. Use iOS 11.0 or higher
2. Use Swift version 5.0 and above
3. _(optional)_ ```Core Location permission``` for device location

> __Note:__ If the application does not have the listed permissions, the values collected using those permissions will be ignored. To provide a valid device fingerprint, we recommend employing as much permission as possible based on your use-case.

#### Step 1 - Installation
```
pod 'Tutelar', '~> 0.0.3'
pod update
```
#### Step 2 - Import SDK
```
import Tutelar
```
#### Step 3 - Initialize SDK
To initialize the SDK add the below line of code with the public key you retrieved from Tutelar merchant panel. If you don't have a public key create new one.
```
let tutelar = Fingerprint(key: " Your Unique Public Key ")
```
#### Step 4 - Implement  Delegate Method
Use the below code to obtain the Device result.
```
extension ViewController: FingerprintDelegate{
    func onFailure(message: String) {
        // Failure Callback.
    }
    func onSuccess(data: [String : Any]) {
        // Success Callback
    }
}
```
#### Step 5 - Getting Device Info
By calling the following function to receive the device info shown below.
```
tutelar.getDeviceDetails(withDelegate: self )
```
#### Step 6 - Update Permission (optional)
You have to add this permission in Info.plist.
```
// This is probably the only one you need. Background location is supported
// when the app is using location service while in the background.
NSLocationWhenInUseUsageDescription
```
That's it for the integration, now send the obtained device fingerprint to the server.
