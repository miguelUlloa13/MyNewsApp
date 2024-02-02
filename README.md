# Bienvenido a mi repositorio MyNewsApp

MyNewsApp es una App gratuita para **iOS!** el cual desarrollé para una prueba técnica para SPS Teach is Now, pero sobre todo para demostrar mis conocimientos adquiridos como desarrollador iOS. Haber realizado la aplicación me permitió mejorar, adquirir y acentuar mis habilidades.

<img width="383" alt="Screenshot 2024-02-02 at 3 21 13 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/1c441ffe-37b9-433f-8da0-1c84cfdea0e1">
<img width="140" alt="Screenshot 2024-02-02 at 3 21 54 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/330f112b-9e6e-4835-bec6-415e5b08953b">

# Informacion general

 1. iOS Version 15.0+
 2. Xcode 12.0+
 3. Swift 5+
 4. Soporta modo oscuro
 5. Kingfisher

> **ProTip:** -   Por razones de compatibilidad, no se selecciono la versión mas recientes de **iOS** y **Xcode**.

<img width="383" alt="Screenshot 2024-02-02 at 2 18 20 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/11589f38-0fa6-478b-ac6b-4825a4076eb0">
<img width="383" alt="Screenshot 2024-02-02 at 2 18 27 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/94f1b036-d556-4e8a-8780-ae366ece652d">

<img width="383" alt="Screenshot 2024-02-02 at 2 18 58 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/2b94fc10-f077-4bc4-bc05-f55feb14bc4c">
<img width="383" alt="Screenshot 2024-02-02 at 2 19 04 p m" src="https://github.com/miguelUlloa13/MyNewsApp/assets/110041833/f7bd3405-979c-4db4-8173-34abcab5f708">



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
 - Assets: Recursos gráficos.

 

## Instalación

 - Ingresar en Terminal o Xcode: `git clone https://github.com/miguelUlloa13/MyNewsApp.git`

## Comentaios finales
En el proyecto proyecto implementa el patron de Arquitectura **MVC**, este patron enfatiza una separación entre la lógica de negocios y su visualización. Esta "separación de responsabilidades" proporciona una mejor división del trabajo, además, permita que sea escalable, mantenible y fácil de expandir.

