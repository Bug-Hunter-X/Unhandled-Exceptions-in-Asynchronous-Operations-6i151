# Unhandled Exceptions in Asynchronous Dart Operations

This repository showcases a common error in Dart: neglecting to handle exceptions during asynchronous operations. The example uses the `http` package to fetch data from a remote API.  Without proper error handling, network issues or API errors could cause the application to crash.

The `bug.dart` file demonstrates the flawed code. The `bugSolution.dart` file shows how to correctly handle these exceptions using `try-catch` blocks and the `rethrow` statement for better error propagation.