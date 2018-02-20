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
# date  : 2018-02-19

import std / sha1
import base64

const Sha1HashSize = 20

type
  Sha1Digest = object
    message: string

proc newSha1Digest*(): Sha1Digest =
  result = Sha1Digest(
    message: ""
  )

proc update*(digest: var Sha1Digest, message: string) =
  digest.message = digest.message & message

proc update*(digest: var Sha1Digest, message: char) =
  digest.message = digest.message & message

proc digest*(message: string): array[0 .. Sha1HashSize - 1, uint8] =
  array[0 .. Sha1HashSize - 1, uint8](secureHash(message))

proc digest*(digest: Sha1Digest): array[0 .. Sha1HashSize - 1, uint8] =
  digest(digest.message)

proc base64digest*(message: string): string =
  encode(digest(message))

proc base64digest*(digest: Sha1Digest): string =
  encode(digest(digest.message))

proc hexdigest*(message: string): string =
  $secureHash(message)

proc hexdigest*(digest: Sha1Digest): string =
  $secureHash(digest.message)
