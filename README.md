# Nonatomic Property Data Race in Objective-C

This repository demonstrates a common but easily overlooked bug in Objective-C: data races caused by concurrent modification of nonatomic properties.  The example highlights the problem and provides a solution using atomic properties and synchronization techniques.

## Problem

When multiple threads access and modify a `nonatomic` property simultaneously without proper synchronization, a data race occurs. This leads to unpredictable behavior and inconsistent results, making debugging exceptionally challenging.

## Solution

The solution involves using either atomic properties (`atomic` keyword) or employing synchronization primitives (e.g., locks, mutexes, semaphores) to control access to the shared property. Atomic properties provide implicit synchronization, while explicit synchronization mechanisms offer finer-grained control over access patterns.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the application.  Observe the erratic output due to the data race.
4. Uncomment the code in `BugSolution.m` to see the solution implemented with atomic properties.  Rerun the application and note the consistent results.

## Additional Notes

This example uses a simple counter to illustrate the problem clearly. However, similar issues can manifest in more complex scenarios, making it critical to be mindful of thread safety when dealing with shared resources in multithreaded Objective-C applications.