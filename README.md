# sha1ext

Extension of std / sha1 mainly for developers using python, ruby etc.

## Usage

- Digest

```nim
digest("nim")

# or

var sha1 = newSha1Digest()
sha1.update("nim")
sha1.digest()
```

- Hex

```nim
hexdigest("nim")

# or

var sha1 = newSha1Digest()
sha1.update("nim")
sha1.hexdigest()
```

- Base64

```nim
base64digest("nim")

# or

var sha1 = newSha1Digest()
sha1.update("nim")
sha1.base64digest()
```
