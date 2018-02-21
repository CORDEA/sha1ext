# sha1ext

[![Build Status](https://travis-ci.org/CORDEA/sha1ext.svg?branch=develop)](https://travis-ci.org/CORDEA/sha1ext)

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

- Sha1Digest

The following two will be the same result.

```
var sha1 = newSha1Digest()
sha1.update("nim")
sha1.base64digest()
```

```
var sha1 = newSha1Digest()
sha1.update('n')
sha1.update('i')
sha1.update('m')
sha1.base64digest()
```
