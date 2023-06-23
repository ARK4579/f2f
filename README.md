<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

1. `cd lib/src/` and make a `tmp` folder: `mkdir tmp`
2. call Figma REST API `curl -H 'X-FIGMA-TOKEN: <aut_token>' '<file_id>' > test1.json`
    * if you don't have auth token you can easily get it by visiting `https://www.figma.com/developers/api#get-files-endpoint` and clicking on get auth token
    * if you want to get file_id, open file browser in figma, find file, right click and select `Copy Link`. Then just copy the id from the url.
3. `dart run`

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
