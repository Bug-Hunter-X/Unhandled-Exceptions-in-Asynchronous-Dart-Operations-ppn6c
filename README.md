# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: improper exception handling within asynchronous operations.  The `bug.dart` file showcases code that fetches data from an API.  If the API call fails or encounters an exception, the error handling is inadequate, potentially leading to unexpected app behavior. The `bugSolution.dart` file provides an improved solution.

## Problem
The primary issue lies in how exceptions are caught and handled in the `fetchData` function.  The `catch` block currently only prints an error message to the console—a silent failure.  A more robust approach would inform the user and potentially implement fallback mechanisms.  Additionally, the type of exception is not considered, leading to a less informative error message.

## Solution
The solution file demonstrates more comprehensive error handling using a `try-catch` block.  It checks for specific exception types to provide targeted responses and presents user-friendly error messages.