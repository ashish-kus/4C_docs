# sys.get_clenv()

## Purpose

`sys.get_clenv()` returns the value of an environment variable on the client.

## Usage

```text
<avar> = sys.get_clenv(<ENVVAR>);
```

## Arguments

- `alpha <ENVVAR>` — the name of the environment variable.

## Returns

- `alpha <avar>` — The value of the env var.
- `NULL alpha` — no value defined for this env var.
There are no error returns.

## Where Used

`sys.get_clenv()` can be called from anywhere. It may be used to set path variables for accessing client files.

## Example

```text
     path = sys.get_clenv("FC_SESSION") + "/" + filename;
     sys.set_extfname(sys.t_text,path);
```

## Description

Return the value of an environment variable. It can be used to decide one of several programs to run that may be different at different sites. If used too much in this way, the programs will become dificult to maintain.

## Bugs/Features/Comments

`sys.get_clenv()` requires a round trip network request.

## See Also

[`sys.get_env()`]({{< ref "getenv.md" >}})

[`sys.put_env()`]({{< ref "putenv.md" >}})

[`sys.set_clenv()`]({{< ref "setclenv.md" >}})

Back to Top

## See Also

- [sys.get_env()]({{< ref "getenv.md" >}})
- [sys.put_env()]({{< ref "putenv.md" >}})
- [sys.set_clenv()]({{< ref "setclenv.md" >}})


