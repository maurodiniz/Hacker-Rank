import UIKit

func timeConversion(_ s: String) {
    var hora = Int(s.prefix(2))
    let am_pm = s.suffix(2)
    
    // minutos e segundos
    let comeco = s.index(s.startIndex, offsetBy: 2)
    let final = s.index(s.endIndex, offsetBy: -2)
    let range = comeco..<final
    let minutosESegundos = s[range]
    
    // se a hora for igual a 12 devo tratar
    if hora == 12 {
        if am_pm == "AM"{
            hora = 0
        }
    } else if am_pm == "PM" {
        hora = hora! + 12
    }
    guard let horaConvertida = hora else { return }
    
    // usando String(format) para formatar o zero a esquerda
    print("\(String(format: "%02d", horaConvertida))\(minutosESegundos)")
}

timeConversion("07:05:45PM")
timeConversion("07:05:45AM")
timeConversion("12:00:00AM")
timeConversion("12:01:00AM")
timeConversion("11:59:59PM")
