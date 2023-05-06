<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutt
er.dev/developing-packages). 
-->

# Job Architecture
An architecture to simplify and automate the data transfer process of MVC,MVVM and MVP applications.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

### Job
  A Job is a class that has the necessary data to start a sync/async process.
### JobResponse
  EveryJob that should have a return type (such as GET requests) return a JobResponse. If you want only interested in the Job's status rather than its return type, you   can create an empty JobResponse with 
  ```dart
  JobResponse<void>()
  ```
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
