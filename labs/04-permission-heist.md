# Micro-Lab 04 — Permission Heist

**Skills:** users, groups, ownership, mode bits, effective access, structured diagnosis  
**Time:** 20–45 minutes  
**Best fit:** Weeks 5–6

## Briefing

A script that worked yesterday now prints “Permission denied.” Someone immediately proposes `chmod 777`.

Your mission is to solve the problem **without using 777**.

## Mission

Create a disposable directory and test user/group combination. Build a small access scenario where one user should be allowed and another should not.

Inspect with:

```bash
id
ls -ld
ls -l
namei -l
stat
getent group
```

Explain which permission check matters at each directory/file boundary.

## Twist

Create a nested directory where the file itself looks readable, but traversal on a parent directory prevents access.

## Evidence to save

- ownership/group/mode before and after
- exact failing command and error
- short explanation of **read vs. write vs. execute on directories**
- the least-privilege fix

## Victory condition

You can diagnose a permission problem from the path downward instead of changing modes until the error disappears.