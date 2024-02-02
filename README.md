# Bienvenido a mi repositorio MyNewsApp

MyNewsApp es una App gratuita para **iOS!** el cual desarrollé para una prueba técnica para SPS Techadme is Now , pero sobre todo para demostrar mis conocimientos adquiridos como desarrollador iOS. Haber realizado la aplicación me permitió mejorar, adquirir y acentuar mis habilidades .


# Informacion general

 1. iOS Version 15.0+
 2. Xcode 12.0+
 3. Swift 5+
 4. Soporta modo oscuro
 5. Kingfisher

> **ProTip:** -   Por razones de compatibilidad, no se selecciono la versión mas recientes de **iOS** y **Xcode**.



## Estructura del proyecto

 - Utils: Fuente de texto de la App
 - Controller: Enruta comandos a los modelos y vistas.
	 - Controlador de la vista Home
	 - Controlador de la vista Detail
	 - Controlador de la vista de la celda New 
 - View: Se encarga del diseño y presentación.
	 - LaunchScreen: Splashscreen de la App
	 - NewTableViewCell: Celda personalizada o Item
	 - DetailViewController: Pantalla de detalle
	 - Main: Pantalla principal o Home
 - Model: Maneja datos y lógica de negocios.
	 - NewResponseModel: Modelo de la respuestas de la conexión a la Api
	 - NewDataModel: Modelo de los datos obtenidos de la Api
	 - NetworkError: Tipo de errores que podemos encontrar al intentar consultar la API
	 - APIClient: Clase para realizar la conexión a la API
 - Assets: Recursos gráfic

 

## Instalación

 - Ingresar en Terminal o Xcode: `git clone https://github.com/miguelUlloa13/MyNewsApp.git`
