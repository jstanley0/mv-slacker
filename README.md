# mv-slacker
A thing that lets you send Motivosity dollars via Slack
## Description
This program listens for you to say certain magic words in Slack. When it hears them, it performs a Motivosity transaction on your behalf and posts the result to the channel.
## Example use
```
<user> $1 :motivosity: to Jane Doe, for Customer Experience. Thanks for helping the customer!
<mv-slacker> Success! Jane Doe has received your appreciation.
```
### Message format
The key part of the message is `$<amount> :motivosity: to <user>`. It can be optionally followed with `, for <company value>` and/or a customized note after `.`

To be more precise,
```
$<amount> :motivosity: to <user>[, for <company value>][.[ <note>]]
```
### Identifying the user
mv-slacker will complete your request only if `<user>` matches exactly one Motivosity user. If the `<user>` term matches more than one name, mv-slacker will DM you the list of matching names.

## Why isn't this an outgoing webhook?
That would be a lot simpler, wouldn't it? But then you'd have to trust some random service with your Motivosity credentials. If and when Motivosity supports OAuth, I'd be happy to take that approach. That way, a single service would allow any Slack user to register with the bot by providing a token, and it'd be beautiful. But for now, this inelegant solution at least keeps your password on your local machine.

## Installation
```
gem install mv-slacker
```

## Usage
```
mv-slacker
```
The first time you run it, it will prompt you to enter your Motivosity credentials and your Slack token. These will be stored in `~/.mv-slacker-auth` for later use. If that file is deleted, or if a login fails, mv-slacker will prompt you again. If the permissions on this file are too loose, mv-slacker will refuse to use them, so be sure it's readable only by you.

## Technical information
mv-slacker uses the Slack Real-Time Messaging API to watch for your commands. It doesn't depend on any Slack integrations. It uses the mvclient gem to communicate with Motivosity.
