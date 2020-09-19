# aries-storage-mongo

[![Release](https://img.shields.io/github/release/scoir/aries-storage-mongo.svg?style=flat-square)](https://github.com/scoir/aries-storage-mongo/releases/latest)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://raw.githubusercontent.com/scoir/aries-storage-mongo/main/LICENSE)
[![Godocs](https://img.shields.io/badge/godoc-reference-blue.svg)](https://pkg.go.dev/github.com/scoir/aries-storage-mongo)

[![Build Status](https://github.com/scoir/aries-storage-mongo/workflows/Build/badge.svg)](https://github.com/scoir/aries-storage-mongo/actions)
[![codecov](https://codecov.io/gh/scoir/aries-storage-mongo/branch/main/graph/badge.svg?token=dXh8Imy2PO)](https://codecov.io/gh/scoir/aries-storage-mongo)
[![Go Report Card](https://goreportcard.com/badge/github.com/scoir/aries-storage-mongo)](https://goreportcard.com/report/github.com/scoir/aries-storage-mongo)

MongoDB implementation for Hyperledger Aries storage

Usage:

```go
    ar, err := aries.New(aries.WithStoreProvider(
        mongodbstore.NewProvider("mongodb://localhost:27017", mongodbstore.WithDBPrefix("aries"))))
    if err != nil {
        //don't do this :)
        log.Panicf("oh no! %s", err)
    }
```

### Development

```
make
```

to run tests.