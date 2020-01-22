//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// turns off borders, but shapes have a fill
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Make a big rectangle to make background colour
canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// blue stripes
canvas.lineColor = lightBlue
canvas.defaultLineWidth = 50

// Create a loop for the blue stripes
for x in stride(from: 25, to: 375, by: 100) {
    
    // Create blue stripes
     canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 350))
}

// Green stripes
canvas.lineColor = neonGreen

// Create a loop for the green stripes
for X in stride(from: 75, to: 400, by: 100) {
    
    // Create green stripes
    canvas.drawLine(from: Point(x: X, y: 75), to: Point(x:X, y: 400))
}
    
// Put the big sloan text
canvas.textColor = Color.white
canvas.drawText(message: "sloan", at: Point(x: 150, y: 425), size: 95, kerning: 0)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

