# start.spring.io default to Maven

On the 18th of October 2022 [https://start.spring.io](start.spring.io) switched the default build tool from Maven to Gradle https://github.com/spring-io/start.spring.io/issues/1012.

By adding this extension to a Chromium (Chrome, Brave etc) or Firefox browser, the default build tool switches back to Maven.

## How to add this extension to your browser?

This extension is not published (yet) to Chrome Store. To add it to your browser:

1. Clone the repo:

```
$ git clone https://github.com/maciejwalkowiak/start-spring-io-default-maven-extension
```

2. Run `make build`
3. Install extension:
- **Chrome**: Go to `chrome://extensions`, enable "Developer Mode" and load the unpacked extension from `build/chrome` directory.
- **Firefox**: Go to `about:debugging#/runtime/this-firefox` and load the temporary add-on from `build/firefox` directory.

Enjoy!

![](https://media.giphy.com/media/vNITrslTkxf8Y/giphy.gif)
