# Plug

## Template

Generates **Plug** + **Cowboy** scaffold for application with static file serving, **Plug** endpoint and **Websocket** stub.

#### Arguments

* `ws` (boolean) - set to *true* in order to add default **Websocket&** handler.
* `static` (boolean) - set to *true* in order to serve files.

## Injects

### Socket

Generic socket implementation. This module can be modified or injected directly inside cowboy configuration.

#### Usage

```bash
$ mix aqua add plug.socket MyApp.MySocket
```

#### Arguments

None (yet.)

### Router

Generic Plug `Plug.Builder` instance with `match` and `dispatch` plugs. Can be used to create controllers or organize different levels of routes in application.

#### Usage

```bash
$ mix aqua add plug.router MyApp.Controllers.UserController
```

#### Arguments

None (yet.)