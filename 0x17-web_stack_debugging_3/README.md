# 0x17. Web stack debugging #3

In this debugging project, we are tasked with identifying and resolving an issue causing a 500 Internal Server Error in an Apache web server running a WordPress website on a LAMP (Linux, Apache, MySQL, PHP) stack. The goal is to utilize `strace` to trace the system calls and find the root cause of the error.

## Learning Objectives

- Gain experience in debugging web server issues.
- Learn to use `strace` for tracing system calls.
- Understand the importance of logs and error messages in troubleshooting.
- Implement a solution using Puppet for automation.

## Project Structure

### 0. Strace is your friend

- **Objective:**
  - Use `strace` to identify the cause of the 500 Internal Server Error in Apache.
  - Resolve the issue manually.
  - Automate the fix using Puppet by creating a Puppet manifest (`0-strace_is_your_friend.pp`).
  
- **Hints:**
  - `strace` can attach to a currently running process.
  - Utilize `tmux` to run `strace` in one window and `curl` in another.
  - Your Puppet manifest should contain Puppet code, and you can use any Puppet resource type for your fix.

- **Example Usage:**
  ```bash
  # Identify 500 Internal Server Error with curl
  curl -sI 127.0.0.1
  # Output: HTTP/1.0 500 Internal Server Error

  # Apply Puppet manifest for automated fix
  puppet apply 0-strace_is_your_friend.pp

  # Confirm fixed state with curl
  curl -sI 127.0.0.1:80
  # Output: HTTP/1.1 200 OK
  ```

## How to Run

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Run the Puppet manifest using the following command:
   ```bash
   puppet apply 0-strace_is_your_friend.pp
   ```

## Additional Resources

- [Puppet Documentation](https://puppet.com/docs/puppet/)
- [strace Documentation](https://strace.io/docs/)
- [WordPress Documentation](https://wordpress.org/support/)
- [LAMP Stack Documentation](https://bitnami.com/stack/lamp)

