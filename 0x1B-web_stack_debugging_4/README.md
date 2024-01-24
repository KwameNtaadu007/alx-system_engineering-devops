# 0x1B. Web Stack Debugging #4

## Overview

In this repository, we address two web stack debugging tasks:

### Task 0: The Sky is the Limit

- **Problem Statement:** The existing web server setup featuring Nginx is experiencing a high number of failed requests under pressure during benchmarking using ApacheBench.
- **Solution:** A Puppet manifest (`0-the_sky_is_the_limit_not.pp`) was created to fix the stack and eliminate failed requests. The script focuses on optimizing the Nginx configuration.

#### Benchmark Results Before Fix:

```bash
Failed requests: 943
Requests per second: 5664.01 [#/sec] (mean)
```

#### Benchmark Results After Fix:

```bash
Failed requests: 0
Requests per second: 6650.99 [#/sec] (mean)
```

### Task 1: User Limit

- **Problem Statement:** Logging in as the 'holberton' user produces error messages related to too many open files.
- **Solution:** A Puppet manifest (`1-user_limit.pp`) was created to change the OS configuration, enabling the 'holberton' user to log in without encountering "Too many open files" errors.

#### Before Fix:

```bash
-su: /etc/profile: Too many open files
-su: /home/holberton/.bash_profile: Too many open files
# ... (similar errors)
```

#### After Fix:

```bash
# No error messages related to open files
```

## Repository Structure

```
├── 0x1B-web_stack_debugging_4
│   ├── 0-the_sky_is_the_limit_not.pp
│   └── 1-user_limit.pp
└── README.md
```

## How to Use

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/alx-system_engineering-devops.git
   cd alx-system_engineering-devops/0x1B-web_stack_debugging_4
   ```

2. Execute Puppet manifests:

   ```bash
   puppet apply 0-the_sky_is_the_limit_not.pp
   puppet apply 1-user_limit.pp
   ```

## Notes

- Logs are essential for debugging. Always check logs when something is going wrong.
- Puppet manifests are used for configuration management to automate fixes.

This concludes the overview of the tasks and how to use the provided Puppet manifests to address the identified issues.
