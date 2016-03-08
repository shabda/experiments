import UIKit

let image = UIImage(named: "sample")

/*
RGB Channels which we will set.
*/
enum Channel{
    case Red
    case Green
    case Blue
}


/*
    ImageProcessor accepts an UIImage and applies transforms on them using instance methods
    Usage:
    var imageProcessor = ImageProcessor(image: image)
    imageProcessor.removeGreen()
    imageProcessor.removeGreen.ligtenBy(-50)

*/
class ImageProcessor{
    var image: UIImage
    
    init(image: UIImage){
        self.image = image
    }
    
    /*
    Takesn a function with signature (Pixel) -> Pixel and applies the function to each pixel of the image
    */
    func transformImage(transformer: (Pixel) -> Pixel) -> UIImage{
        let rgbaImage = RGBAImage(image: image)!
        // It is not necessary to loop width, then columns as we are applying the same function to each pixel
        // So we can loop over all in one loop.
        for index in 0..<rgbaImage.pixels.count{
            var pixel = rgbaImage.pixels[index]
            pixel = transformer(pixel)
            rgbaImage.pixels[index] = pixel
        }
        return rgbaImage.toUIImage()!
        
    }
    
    /*
    Takes a channel and removes it completely
    */
    func removeChannel(channel: Channel) -> UIImage{
        let transformer = {
            (var pixel: Pixel) -> Pixel in
            switch channel{
            case .Red:
                pixel.red = 0
            case .Blue:
                pixel.blue = 0
            case .Green:
                pixel.green = 0
            }
            return pixel
        }
        return transformImage(transformer)
    }
    
    func removeRed() -> UIImage{
        return removeChannel(Channel.Red)
    }
    
    func removeGreen() -> UIImage{
        return removeChannel(Channel.Green)
    }
    
    func removeBlue() -> UIImage{
        return removeChannel(Channel.Blue)
    }
    
    /*
    Converts image to grayScale
    */
    func grayScale() -> UIImage{
        let transformer = {
            (var pixel: Pixel) -> Pixel in
            let avg = UInt8((Int(pixel.red) + Int(pixel.green) + Int(pixel.blue))/3)
            (pixel.green, pixel.red, pixel.blue) = (avg, avg, avg)
            return pixel
        }
        return transformImage(transformer)
    }
    
    /*
    Darkens or lightens and image by a given value.
    Negative values will Darken the image
    */
    func ligtenBy(by: Int) ->UIImage{
        let transformer = {
            (var pixel: Pixel) -> Pixel in
            let maxValue = 255
            let green: Int = min(maxValue, Int(pixel.green)+by)
            let red: Int = min(maxValue, Int(pixel.red)+by)
            let blue: Int = min(maxValue, Int(pixel.blue)+by)
            (pixel.green, pixel.red, pixel.blue) = (UInt8(green), UInt8(red), UInt8(blue))
            return pixel
        }
        return transformImage(transformer)
    }
    
}

var imageProcessor = ImageProcessor(image: image!)
//ImageProcessor(image: imageProcessor.removeGreen()).ligtenBy(-50)
ImageProcessor(image: imageProcessor.grayScale()).ligtenBy(30)

