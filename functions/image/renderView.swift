/*
IMPORTANT

Info.plist

- Open as Source code and add the following:

<key>NSPhotoLibraryAddUsageDescription</key>
<string>Your reason about why you need to access photos comes here as a message</string>

If you don't add this / correctly, you cannot write images and Xcode will throw an error and crash the app

Compiled together from 2 tutorials at
- https://www.hackingwithswift.com/example-code/media/how-to-render-a-uiview-to-a-uiimage
- https://www.hackingwithswift.com/example-code/media/uiimagewritetosavedphotosalbum-how-to-write-to-the-ios-photo-album

*/

//
//Part one: The rendering
//

//render the UIView as an image
let renderer = UIGraphicsImageRenderer(size: view.bounds.size)
let renderedImage = renderer.image { ctx in
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
}
//end render

//save the image

UIImageWriteToSavedPhotosAlbum(renderedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
//end save


//
// Part two: The Obj-C Function
//

//Make sure this function stays inside a class, to be able to use Obj-C tag

@objc func image(_ image: UIImage, didFinishSavingWithError error: NSError?, contextInfo: UnsafeRawPointer) {
       if let error = error {
           // we got back an error!
           let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
           ac.addAction(UIAlertAction(title: "OK", style: .default))
           present(ac, animated: true)
       } else {
           let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .alert)
           ac.addAction(UIAlertAction(title: "OK", style: .default))
           present(ac, animated: true)
       }
   }
