# dbpath

get database path getDataBasePath()

## Getting Started

this package has only one function `getDataBasePath()` to get database path for android  , as path_provider doesn't have it 

for ios : there is no database path for ios you should use `getApplicationDocumentsDirectory()` from path_provider package 

somethinge like this 


```dart
Future<String> getDBPath() async => Platform.isAndroid
    ? (await getDataBasePath())!
    : (await getApplicationDocumentsDirectory()).path;
```
