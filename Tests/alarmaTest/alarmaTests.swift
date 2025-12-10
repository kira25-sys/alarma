import XCTest
@testable import alarma // Asegúrate de que el nombre del módulo sea correcto.

// La clase de prueba debe heredar de XCTestCase
final class AlarmaTests: XCTestCase {

    // Cada función de prueba debe empezar con 'test'
    func testAlarmManager_canAddAlarms() throws {
        // ... Tu código de prueba aquí (ARRANGE, ACT, ASSERT)
        let manager = AlarmManager()
        XCTAssertEqual(manager.alarms.count, 0)
    }

    // Asegúrate de que tienes al menos una función que empiece con 'test'
}