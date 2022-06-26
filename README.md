# GitHub

Manages my personal GitHub account.

1. Creates repository that contains THIS terraform plan
2. Creates repository secrets.


## Pre-reqs

* BitWarden CLI

### GITHUB_TOKEN

Either generate a new GITHUB_TOKEN via:
`GitHub -> Settings -> Developer Settings -> Personal access tokens`

There you need a token with the following permissions:
- admin:org
- admin:public_key
- admin:repo_hook
- delete:packages
- delete_repo
- repo
- workflow
- write:packages

The resulting value will need to be assigned to the environment variable `GITHUB_TOKEN` in order for terraform to pick it up.

### Bitwarden Session Token

1. Login to Bitwarden
```
❯ bw login
? Email address: email@domain.com
? Master password: [hidden]
? Two-step login method: Authenticator App
? Two-step login code: 123456
You are logged in!

To unlock your vault, set your session key to the `BW_SESSION` environment variable. ex:
$ export BW_SESSION="ABCDEFG1234567890=="
> $env:BW_SESSION="ABCDEFG1234567890=="

You can also pass the session key to any command with the `--session` option. ex:
$ bw list items --session ABCDEFG1234567890==
```
2. Export the `BW_SESSION` token
```
❯ export BW_SESSION="ABCDEFG1234567890=="
```
3. Sync passwords (if necessary)
```
❯ bw sync
```

## Export Required Secrets

```
❯ export GH_TOKEN=$(bw get password github-pat-personal-terraform)
```
                                                                