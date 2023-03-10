//
//  TopBar.swift
//  SpeechRec
//
//  Created by Hofa on 20/06/1444 AH.
//

import SwiftUI

struct TopBar: View {
let didClose: () -> Void
var body: some View {
Color("L2")
.ignoresSafeArea()
VStack(){

        }
        
        .foregroundColor(Color("ICONTEXT"))
    }
struct TopBar_Previews: PreviewProvider {
static var previews: some View {
TopBar{}
.previewInterfaceOrientation(.landscapeLeft)
// .padding()
// .background(Color.blue)
// .previewLayout(.sizeThatFits)
}
}

//private extension TopBar{
var back: some View{
RoundedCorners(color: Color("L2"),
tl:0,
tr:0,
bl:20,
br:20)

}
}

// MARK: https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui
struct RoundedCorners: View {
var color: Color = .black
var tl: CGFloat = 0.0
var tr: CGFloat = 0.0
var bl: CGFloat = 0.0
var br: CGFloat = 0.0

var body: some View {
GeometryReader { geometry in
Path { path in

        let w = geometry.size.width
        let h = geometry.size.height

        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)
        
        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        path.closeSubpath()
    }
    .fill(self.color)
}
}
}
