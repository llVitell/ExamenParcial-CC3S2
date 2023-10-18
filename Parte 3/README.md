# Parte 3: Ruby on Rails

Primero clonamos el repositorio del wordguesser

```Shell
git clone https://github.com/saasbook/hw-rails-wordguesser.gi
```

Luego ejecutamos `bundle install` para poder iniciar el servidor con `rails server`

Este sería el resultado de nuestra aplicación 

![servidor](Imagenes/)
***
## Preguntas

- **¿Cuál es el objetivo de ejecutar bundle install?**

Bundle install se encarga de instalar todas las gemas (dependencias) que están especificadas dentro de nuestro gemfile para poder desarrollar dentro de nuestro ordenador.

- **¿Por qué es una buena práctica especificar --whitout production al ejecutarlo en su computadora de desarrollo?**

Por que --without production evita la instalación local de gemas de producción, es decir gemas que estén dentro de `group :production` las cuales son innecesarios para desarrollo.
***

- **¿En qué parte de la estructura del directorio de la aplicación Rails está el código correspondiente al modelo WordGuesserGame?**

Los modelos en general se encuentran dentro del directorio `app/models/` en el cual se encuentra la estructura principal del modelo WordGuesserGame `app/models/word_guesser.game.rb
`
- **¿En qué archivo está el código que más se corresponde con la lógica del archivo app.rb de las aplicaciones Sinatra que maneja las acciones entrantes del usuario?**

El archivo app.rb en Sinatra se encarga de definir los métodos http así como su lógica respectiva. En Rails esto se encuentra en los controladores, específicamente en `app/controllers/game_controller.rb
`
- **¿Qué clase contiene ese código?**

Todo el código del controlador está dentro de la clase `GameController`

- **¿De qué otra clase (que es parte del framework Rails) hereda esa clase?**

En el código se visualiza `GameController < ApplicationController` lo que significa que `GameController` se hereda de `Application Controller`

- **¿En qué directorio está el código correspondiente a las vistas de la aplicación Sinatra (new.erb, show.erb, etc.)?**

En Rails las vistas de la aplicación se encuentran dentro de la carpeta `app/views/layouts` y `app/views/game`. En `layouts` se encuentra los esquemas de la aplicación principal mientras que en `game` están las vistas específicas (lose, new, show, win
)
- **Los sufijos de nombre de archivo para estas vistas son diferentes en Rails que en la aplicación Sinatra. ¿Qué información proporciona el sufijo situado más a la derecha del nombre del archivo (por ejemplo: en foobar.abc.xyz, el sufijo .xyz) sobre el contenido del archivo?**

En sinatra se utiliza la extension .erb mientras que en rails usamos .html.erb, este sufijo .erb incrusta Ruby dentro de html.

- **¿Qué información te brinda el otro sufijo sobre lo que se le pide a Rails que haga con el archivo?**

El sufijo .html es para definir un hypertext markup, el cual nos ayuda a maquetar y desarrollar con css una interfaz más amigable con el usuario.

- **¿En qué archivo está la información de la aplicación Rails que asigna rutas (por ejemplo, GET/new) a las acciones del controlador?**

En rails se definen las rutas dentro de `config/routes.rb`

- **¿Cuál es el papel de la opción :as => 'name' en las declaraciones de ruta de config/routes.rb?**
***

- **En la versión de Sinatra, los bloques before do...end y after do...end se utilizan para la gestión de sesiones. ¿Cuál es el equivalente más cercano en esta aplicación Rails y en qué archivo encontramos el código que lo hace?**

- **Un formato de serialización popular para intercambiar datos entre aplicaciones web es JSON. ¿Por qué no funcionaría utilizar JSON en lugar de YAML? (Reemplaza YAML.load() con JSON.parse() y .to_yaml con .to_json para realizar esta prueba. Tendrás que borrar las cookies asociadas con localhost:3000 o reiniciar tu navegador con un nuevo Incognito/ Ventana de navegación privada, para borrar la sesión[]. Según los mensajes de error que recibe al intentar utilizar la serialización JSON, debería poder explicar por qué la serialización YAML funciona en este caso pero JSON no).**

***

- **En la versión de Sinatra, cada acción del controlador termina con redirect (que, como puedes ver, se convierte en redirección_to en Rails) para redirigir al jugador a otra acción, o con erb para representar una vista. ¿Por qué no hay llamadas explícitas correspondientes a erb en la versión Rails?**

- **En la versión de Sinatra, codificamos directamente un formulario HTML usando la etiqueta <form>, mientras que en la versión de Rails usamos un método Rails form_tag, aunque sería perfectamente legal usar etiquetas HTML <form> sin formato en Rails. ¿Se te ocurre alguna razón por la que Rails podría introducir este "nivel de direccionamiento indirecto"?**

- **¿Cómo se manejan los elementos del formulario, como campos de texto y botones, en Rails? (Nuevamente, el HTML sin formato sería legal, pero ¿cuál es la motivación detrás de la forma en que Rails lo hace?)**

- **En la versión de Sinatra, las vistas de show, win y lose reutilizan el código en la vista new que ofrece un botón para iniciar un nuevo juego. ¿Qué mecanismo de Rails permite reutilizar esas vistas en la versión de Rails?.**