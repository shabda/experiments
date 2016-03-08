//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")

enum Channel{
    case Red
    case Green
    case Blue
}

func transformImage(image: UIImage, transformer: (Pixel) -> Pixel) -> UIImage{
    let rgbaImage = RGBAImage(image: image)!
    for index in 0..<rgbaImage.pixels.count{
        var pixel = rgbaImage.pixels[index]
        pixel = transformer(pixel)
        rgbaImage.pixels[index] = pixel
    }
    return rgbaImage.toUIImage()!

}


func removeChannel(image: UIImage, channel: Channel) -> UIImage{
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
    return transformImage(image, transformer: transformer)
}

func removeRed(image: UIImage) -> UIImage{
    return removeChannel(image, channel: Channel.Red)
}

func removeGreen(image: UIImage) -> UIImage{
    return removeChannel(image, channel: Channel.Green)
}

func removeBlue(image: UIImage) -> UIImage{
    return removeChannel(image, channel: Channel.Blue)
}

func grayScale(image: UIImage) -> UIImage{
    let transformer = {
        (var pixel: Pixel) -> Pixel in
        let avg = UInt8((Int(pixel.red) + Int(pixel.green) + Int(pixel.blue))/3)
        (pixel.green, pixel.red, pixel.blue) = (avg, avg, avg)
        return pixel
    }
    return transformImage(image, transformer: transformer)
}

func ligtenBy(image: UIImage, by: Int) ->UIImage{
    let transformer = {
        (var pixel: Pixel) -> Pixel in
        let maxValue = 255
        let green: Int = min(maxValue, Int(pixel.green)+by)
        let red: Int = min(maxValue, Int(pixel.red)+by)
        let blue: Int = min(maxValue, Int(pixel.blue)+by)
        (pixel.green, pixel.red, pixel.blue) = (UInt8(green), UInt8(red), UInt8(blue))
        return pixel
    }
    return transformImage(image, transformer: transformer)
}

ligtenBy(image!, by: 50)






