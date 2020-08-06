##### [badges][badges]

# ExPesa

> Payment Library

## Table of contents

- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Author](#author)
- [Licence](#licence)

## Features

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_pesa` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_pesa, "~> 0.1.0"}
  ]
end
```

## Configuration

## Configuration

### Mpesa (Daraja)

Add below config to dec.exs / prod.exs files
This asumes you have a clear understanding of how Daraja API works.

The `env` is either `sandbox` or `production`

`dev.exs` These are sandbox credentials given by Safaricom

```elixir
config :ex_pesa,
    mpesa: [
        env: "sandbox",
        consumer_key: "72yw1nun6g1QQPPgOsAObCGSfuimGO7b",
        consumer_secret: "vRzZiD5RllMLIdLD",
        mpesa_short_code: "174379",
        mpesa_passkey: "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919",
        mpesa_callback_url: "http://91eb0af5.ngrok.io/api/payment/callback"
    ]
```

## Documentation

The docs can be found at [https://hexdocs.pm/ex_pesa](https://hexdocs.pm/ex_pesa).

## Licence

ExPesa is released under [MIT License](https://github.com/appcues/exsentry/blob/master/LICENSE.txt)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=for-the-badge)](#)

[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source-200x33.png?v=103)](#)
