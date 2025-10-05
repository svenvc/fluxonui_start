# fluxonui_start

A standard Elixir Phoenix LiveView project adapted to use Fluxon UI

## Running this example

Make sure that the following are true:

- Elixir and Phoenix are installed
- PostgreSQL is running and is accessible
- Fluxon UI is installed

```console
$ mix setup
$ iex -S mix phx.server
```

Go to http://localhost:4000 and register for an account,
you will receive an email in http://localhost:4000/dev/mailbox,
now you can create a password or keep logging in via email.


## How this repository was created

These detailed steps and corresponding commits show exactly 
what was done to create this example.

### Create a new project repository on GitHub

```console
$ git clone git@github.com:svenvc/fluxonui_start.git
```

https://github.com/svenvc/fluxonui_start/commit/b8d40b6d46137d06c5dbca1465b18ce1d55e8146


### Create a new Phoenix LiveView 1.8.4 project.

```console
$ cd fluxonui_start.git
$ mix phx.new . --module FluxonUIStart --app fluxonui_start
$ mix ecto.create  
$ git add .
$ git commit -S -m "mix phx.new . --module FluxonUIStart --app fluxonui_start"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/785acbd5de274991d46b97ac0b10d4890de207e5


### Install Fluxon UI

Add the Fluxon UI hex repository using your FLUXON_KEY_FINGERPRINT and FLUXON_LICENSE_KEY from your account dashboard. Using version 2.0.

```console
$ mix hex.repo list
```

- Add fluxon to project deps in mix.exs

```console
$ mix deps.get
```

- Add `use Fluxon` to html_helpers in fluxonui_start_web.ex
- Add `@source` and `@import` to assets/css/app.css
- Extend assets/js/app.js as instructed adding hooks
- Remove all code for button, input(s), error and table from core_components.ex
- Add standard dark/light theme support to assets/css/app.css

```console
$ git add .
$ git commit -S -m "execute fluxon installation instructions"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/0ddcdc99139c73e4a7cea25dc35d8f197f7a018f


### Create a Todos resource

```console
$ mix phx.gen.live Todo todos description:string due:date
$ mix ecto.migrate
$ git add .
$ git commit -S -m "mix phx.gen.live Todo todos description:string due:date"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/e06f4d626a09c0eda85ad3a62ab8ddafe839358b


## Integrate routes to new todo resource

- Adapt router.ex
- Make / point to todos' index
- Add title to home menu

```console
$ git add .
$ git commit -S -m "adapt router.ex, make / point to todos' index, add title to home menu"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/f4308541e07bcf9d43f3f7c86c7c9207d8547584


### Adapt generated code to Fluxon UI

- Change button variant primary to solid
- Add vertical spacing to form.ex form fields
- Make due date default to today when created new
- Use DatePicker component in form.ex with min date today
- Rework table usage in index.ex for Fluxon UI table component
- Make show, edit, delete operations explicit
- Add row click to show
- Switch from streaming to normal list assign in index.ex

```console
$ git add .
$ git commit -S -m "adapt generated todo UI to fluxon UI"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/e0bd6f8b2dda01dd5e4f6132aff60c45f9240f52


### Add authentication

```console
$ mix phx.gen.auth Accounts User users --live
$ mix deps.get
$ mix ecto.migrate
$ git add .
$ git commit -S -m "mix phx.gen.auth Accounts User users --live"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/2246a650e22a77238f50a2ee33d6904d18ce0e9a


### Move todo routes under authentication

```console
$ git add lib/fluxonui_start_web/router.ex
$ git commit -S -m "move todo routes under authentication"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/4861a9647efb1c5fdd0b0ff77290e44712a3daee


### Adapt generated code to Fluxon UI

- Change button variant primary to solid
- Add vertical spacing to login.ex, registration.ex and settings.ex form fields

```console
$ git add .
$ git commit -S -m "adapt generated todo UI to fluxon UI"
$ git push
```

https://github.com/svenvc/fluxonui_start/commit/0d95413746661db206d507a4467df2f7bfe815cd

