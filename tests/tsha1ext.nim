# Copyright 2018 Yoshihiro Tanaka
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

  # http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Author: Yoshihiro Tanaka <contact@cordea.jp>
# date  : 2018-02-20

import unittest
import base64
import ../src/sha1ext

suite "Sha1 test":
  setup:
    const
      test = "nim"
      hexResult = "771435C469F83F6AA9C405AC5E1ED06314A94F2D"
      base64Result = "dxQ1xGn4P2qpxAWsXh7QYxSpTy0="

  test "Digest test":
    check(encode(digest(test)) == base64Result)

  test "Base64 test":
    check(base64digest(test) == base64Result)

  test "Hex test":
    check(hexdigest(test) == hexResult)

  test "Sha1Digest test":
    var sha1 = newSha1Digest()
    sha1.update(test)
    check(encode(sha1.digest()) == base64Result)
    check(sha1.base64digest() == base64Result)
    check(sha1.hexdigest() == hexResult)

    sha1 = newSha1Digest()
    for t in test:
      sha1.update(t)
    check(encode(sha1.digest()) == base64Result)
    check(sha1.base64digest() == base64Result)
    check(sha1.hexdigest() == hexResult)
