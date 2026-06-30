**CLASES**

El objetivo es desarrollar una app que contenga:
- Swift (particularidades del lenguaje y POO)
- XCode
- Git (Branching strategies (GitFlow, Trunk Based etc.))
- SwiftUI (
    Gestión de estado
    @State
    @Binding
    @Observable (o ObservableObject, según la versión objetivo)
    @Environment
    @EnvironmentObject
    Componentes reutilizables
) https://developer.apple.com/swiftui/get-started/
- UIKit
- Web view (opcional)
- MVVM
- SpriteKit https://developer.apple.com/games/get-started/ https://developer.apple.com/documentation/spritekit
- Ciclo de vida de la app
    App
    Scene
    Estados activo, inactivo y en segundo plano
    Uso de scenePhase
- Navegación (
    NavigationStack
    NavigationPath
    Navegación basada en datos
    Presentación de sheet y fullScreenCover
    TabView)
- Almacenamiento local (Swift Data) (Sería util usar Keychain para encriptar y guardar información sensible)
- CRUD
- Networking (Proyecto de Firebase? solo sería hacer llamadas de API tradicionales, o podemos hacer un backend con vapor (habría que aprender docker y algo de cloud)) (
    URLSession
    Codable
    JSONEncoder y JSONDecoder
    Métodos HTTP (GET, POST, PUT, DELETE)
    Headers y autenticación con tokens
    Manejo de errores y códigos de respuesta)
- Concurrencia en Swift
- Clean Architecture (Inyección de dependencias
    protocolos
    inyección por inicializador
    sustitución de implementación de pruebas)
- Mocking para testing
- Unit Testing
- UI Testing
- Integration Testing
- Distribución en tiendas (opcional) (certificados, perfiles, dispositivos, TestFlight etc.)
- Mock Interviews (opcional)
- API Rest con Vapor (opcional)
- Docker (Opcional)
- Cloud (Opcional)
- Autenticación (Opcional) (TLS, mTLS, SSH etc.)


Propuesta:
App de pokemons que llame a una API, muestre la lista en la pantalla principal, permita la navegación cada que se selecciona uno y navegue a la pantalla con detalles, también que permita la creación, actualización y eliminación de elementos.

1- Vista principal con elementos enlistados (Api Call) +++
2- Usar los estados de SwiftUI
3- Navegación al detalle de cada uno
4- Permite la edición, creación y eliminación de los elementos
5- Tiene almacenamiento local con SwiftData
6- Tiene autenticación
7- Tiene pruebas unitarias, de UI e integrales
8- Usar git
