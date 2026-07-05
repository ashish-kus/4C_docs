# sys.send_msg()

## Purpose

`sys.send_msg()` sends a message to another 4C user.

## Usage

```text
ret = sys.send_msg(<username>,<dotaddr>,<INTEGER1>,<INTEGER2>,<msg>,
        msgarg1 [,msgarg2 [,..., [msgarg11] ] ... ]);
```

## Arguments

- `alpha <username>` — The user to send the message to.
- `alpha <dotaddr>` — The dotaddr of the user to send the message
to.
If `<dotaddr>` is "", then 4C sends the message to the first user
that it finds matching `<username>`.
- `integer <INTEGER1>` — currently unused - SHOULD PASS 0
- `integer <INTEGER2>` — currently unused - SHOULD PASS 0
- `alpha <msg>` — A valid 4C message
- `alpha <msgarg1>` — `<msgarg11>` - 1 or more arguments to the 4C message.

## Returns

- `0` — Message sent
- `-1` — No user with `<username>` and `<dotaddr>`

## Where Used

`sys.send_msg()` can be called from anywhere. It typically might be used to send messages to a background 4C process.

## Description

`sys.send_msg()` is used to send a message to another 4C process. You can also send a message to yourself.

Currently the only message supported is to run a program. To send a message to run a program the `<msg>` arg is "run", `<msgarg1>` is the program name, and `<msgarg2>` - `<msgarg11>` are the arguments to the program. When the run message is sent to a user, the program has higher priority than any normal program. It will seem to the 4C user that a new program was pushed. The previous program will continue only when the new one exits. The 4C user must have the program in his search path or it can not execute.

## Bugs/Features/Comments

There is no way to get a response from the user the message was send to.

This assumes only one client is connected from a single dotaddr.

## See Also

sys.get_dotaddr

Back to Top

## See Also

- [sys.get_dotaddr]({{< ref "getdotaddr.md" >}})


