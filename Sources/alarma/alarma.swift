import Foundation

// 1. Definimos la estructura básica de la alarma
struct Alarm: Identifiable, Codable {
    let id = UUID() 
    var time: Date
    var isActive: Bool
    var label: String
    var repeatDays: Set<Int>
    
    init(time: Date, isActive: Bool = true, label: String = "Alarma", repeatDays: Set<Int> = []) {
        self.time = time
        self.isActive = isActive
        self.label = label
        self.repeatDays = repeatDays
    }
}

// 2. Definimos la clase que gestionará la colección de alarmas
class AlarmManager {
    
    var alarms: [Alarm] = []
    
    func addAlarm(alarm: Alarm) {
        alarms.append(alarm)
    }
    
    func removeAlarm(id: UUID) {
        alarms.removeAll { $0.id == id }
    }
    
    func toggleAlarm(id: UUID) {
        if let index = alarms.firstIndex(where: { $0.id == id }) {
            alarms[index].isActive.toggle()
        }
    }
}