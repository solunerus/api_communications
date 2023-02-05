# Api Communications

Paquete creado para lograr una buena comunicación con el API de Soluciones Nerus

## Descripción

Este paquete trata de facilitar y estandarizar el consumo del API de Soluciones Nerus.

Se dan herramientas como los metodos http usados (GET y POST), los tipos de error que pueden surgir en el transcurso el tiempo actual de a aplicación en formato Europeo y un singleton que estará vivo durante el ciclo de vida de la aplicación

También se incluyen los enviroments, que son las variables que puede tener un organismo, el archivo .env no se incluye en el proyecto.

## Cómo empezar
Lo primero al comenzar la aplicación es obtener los datos del organismo, en el archivo main.dart se espera que se realice lo siguiente:
```dart
void main() async{
final organism = await Environment.getOrganisms(Organisms.NERUS_VALLES);
...
}
```

Después se inicia el Singleton de la siguiente manera:
```dart
void main() async{
final organism = await Environment.getOrganisms(Organisms.NERUS_VALLES);

SingleDataConnection.dataConnection = DataConnection(
    appName: 'TestApp',
    urlApi: organism.urlApi,
    rfc: organism.rfc,
  );
  
  ...

  runApp(const MyApp());
}
```

Si los datos del organismo son dinamicos para la aplicación, se pueden reemplazar.
