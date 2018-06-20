//: Playground - noun: a place where people can play

import UIKit

class daireAlan{
    
    var x:Double
    var y:Double
    
    init (x1:Double,y1:Double){
        x = x1
        y = y1
    }
    
    func hesapla() -> Double {
        return x*y
    }
}

var dA = daireAlan(x1: 3.5, y1: 7.5)

print(dA.x)
print(dA.y)
print(dA.hesapla())
