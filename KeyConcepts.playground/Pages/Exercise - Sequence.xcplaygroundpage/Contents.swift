//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// No border, has a fill
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Giant ellipse to change background colour
canvas.fillColor = grey
canvas.drawEllipse(at: Point(x: 200, y: 300), width: 650, height: 800)

// Put first big red circle
canvas.fillColor = lightRed
canvas.drawEllipse(at: Point(x: 200, y:200), width: 370, height: 370)

// Put smaller grey circle to make donut hole
canvas.fillColor = grey
canvas.drawEllipse(at: Point(x:200, y:200), width: 175, height: 175)

// define the colour and shapes without fill
canvas.borderColor = lightBlue
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false

// put blue ring
canvas.defaultBorderWidth = 100
canvas.drawEllipse(at: Point(x:350, y:200), width: 275, height: 275)

// Put the text
canvas.drawText(message: "the jesus", at: Point(x: 25, y: 450), size: 40, kerning: 0)

canvas.drawText(message: "and mary chain", at: Point(x: 25, y: 405), size: 40, kerning: 0)

// Put subtext #1
canvas.drawText(message: "friday", at: Point(x: 25, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "december 4 1987", at: Point(x: 25, y: 545), size: 10, kerning: 0)
canvas.drawText(message: "8pm show", at: Point(x: 25, y: 530), size: 10, kerning: 0)

// Put subtext #2
canvas.drawText(message: "with", at: Point(x: 130, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "social distortion", at: Point(x: 130, y: 545), size: 10, kerning: 0)
canvas.drawText(message: "and opal", at: Point(x: 130, y: 530), size: 10, kerning: 0)

// Put subtext #3
canvas.drawText(message: "hollywood palladium", at: Point(x: 275, y: 560), size: 10, kerning: 0)
canvas.drawText(message: "6215 sunset blvd.", at: Point(x: 275, y: 545), size: 10, kerning: 0)
canvas.drawText(message: "los angeles, californa", at: Point(x: 275, y: 530), size: 10, kerning: 0)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

