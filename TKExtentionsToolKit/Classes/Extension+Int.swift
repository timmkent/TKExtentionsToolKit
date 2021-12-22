
import Foundation

public extension Int {
    
    // vorischt vorsicht..... immer SEKONDS NEHMEN. Wir wissen, dass bei presence millisenkonds stehen.
  
    public var online:Bool {
         let dateString_double = Double(self)
         var dateString_ti = TimeInterval(dateString_double)
        
        
        // wir machen das jetzt mal ready fuer beides:
        // Wenn es sich um ms handelt, dann teile durch 1000.
        if dateString_ti > 15574045108 {
            dateString_ti = dateString_ti / 1000
        }
        
        // presence hat z.B.     1557404510806
        // heute ist unix epoch: 1564610262
         //    print(dateString_ti)
        
            // scheinbar schreiben wir ins presence system millisekunden
            // und date TI gibt sekunden zurueck.
        
         let timePassedSinceNowInSeconds = Date().timeIntervalSince1970
         let diff = (timePassedSinceNowInSeconds - dateString_ti)
         return diff < 60 ? true : false
    }
  
    public func timePassedSince(lang:String) -> String {
         let dateString_double = Double(self)
         var dateString_ti = TimeInterval(dateString_double)
        
        
        // wir machen das jetzt mal ready fuer beides:
        // Wenn es sich um ms handelt, dann teile durch 1000.
        if dateString_ti > 15574045108 {
            dateString_ti = dateString_ti / 1000
        }
        
        // presence hat z.B.     1557404510806
        // heute ist unix epoch: 1564610262
         //    print(dateString_ti)
        
            // scheinbar schreiben wir ins presence system millisekunden
            // und date TI gibt sekunden zurueck.
        
         let timePassedSinceNowInSeconds = Date().timeIntervalSince1970
         let diff = (timePassedSinceNowInSeconds - dateString_ti)
         let mins = Int(round(diff / 60))
         let hours = Int(round(Double(mins)/60))
         let days = Int(round(Double(hours) / 24))
        
        if hours > 24 {
            if days == 1 {
                switch lang {
                    case "es": return "hace 1 día"
                    case "de": return "vor einem Tag"
                    case "fr": return "il ya a un jour"
                    default: return "1 day ago"
                }
            } else {
                if days > 30 {
                    switch lang {
                    case "es": return "hace > un mes"
                    case "de": return "vor > 1 Monat"
                    case "fr": return "il ya a >1 mois"
                    default: return "> 1 months ago"
                    }
                }
                switch lang {
                    case "es": return "hace \(days) " + "días"
                    case "de": return "vor \(days) " + "Tagen"
                    case "fr": return "il ya a \(days) " + "jours"
                    default: return "\(days) " + "days ago"
                }
            }
        }
        else if mins > 60 {
            if hours == 1 {
                switch lang {
                case "es": return "hace 1 hora"
                case "de": return "vor einer Stunde"
                case "fr": return "il ya a une heure"
                default: return "1 hour ago"
                }
         } else {
                switch lang {
                case "es": return "hace \(hours) " + "horas"
                case "de": return "vor \(hours) " + "Stunden"
                case "fr": return "il ya a \(hours) " + "heures"
                default: return "\(hours) " + "hours ago"
                }
            }
         } else {
            if mins == 1 {
                switch lang {
                case "es": return "hace 1 minuto"
                case "de": return "vor 1 minute"
                case "fr": return "il ya 1 minute"
                default: return "1 minute ago"
                }
         } else {
                
                if mins == 0 {
                    switch lang {
                    case "es": return "hace poco"
                    case "de": return "gerade eben"
                    case "fr": return "juste maintenant"
                    default: return "just now"
                    }
                } else {
                    switch lang {
                    case "es": return "hace \(mins) " + "mins"
                    case "de": return "vor \(mins) " + "Minuten"
                    case "fr": return "il ya a \(mins) " + "mins"
                    default: return "\(mins) " + "mins ago"
                    }
                }
            }
        }
    }

}

public extension Int {
    
    public func timeStampToDate() -> Date {
        return Date(timeIntervalSince1970: Double(self))
    }
    
    /* waere man ganz cool */
    /*
    func timeStampToWhatsAppString() -> String {
        let nowDate = Date()
        let date =  Date(timeIntervalSince1970: Double(self))
        let df = DateFormatter()
        let calendar = Calendar.current
        // let year = calendar.component(.year, from: date)
        // let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let weekday = calendar.component(.weekday, from: date) // 1 = sunday
        
        // wenn "heute" ist, dann zeige Uhrzeit an
        let isToday = day == calendar.component(.day, from: nowDate) ? true : false
        let isYesterday = day == calendar.component(.day, from: nowDate) - 1 ? true : false
        let secondsPasedSinceNow = Date().timeIntervalSecondsSince1970 - self
        let daysPassedSinceNow = secondsPasedSinceNow / 60 / 60 / 24
        
        
        print(daysPassedSinceNow)
        print(calendar.component(.day, from: nowDate) - 1)
        
        if isToday {
            df.timeStyle = .short  // "10:10 AM"  in US, "10:12" for ES,
            return df.string(from: date)
        } else if isYesterday {
            return "yesterday".localized
        } else if daysPassedSinceNow < 6 {
            switch weekday {
            case 0: return "saturday".localized
            case 1: return "sunday".localized
            case 2: return "monday".localized
            case 3: return "tuesday".localized
            case 4: return "wednesday".localized
            case 5: return "thursday".localized
            case 6: return "friday".localized
            default: print("internal error")
            }
        } else {
            df.dateStyle = .short
            return df.string(from: date)
        }
        return "Err"
    }
 */
}
