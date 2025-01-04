# Missing Zero Address Check in ERC20 Token Transfer

This repository demonstrates a common bug in Solidity smart contracts: the absence of a zero address check in a token transfer function.  Transferring tokens to the zero address (`address(0)`) can lead to irreversible loss of funds.

The `bug.sol` file contains the vulnerable code. The `bugSolution.sol` file shows the corrected code.

**Vulnerability:** The original `transfer` function does not check if the recipient address is the zero address. This allows users to unintentionally (or maliciously) send tokens to the zero address, effectively losing them.

**Solution:**  The corrected function includes a `require` statement to ensure the recipient address is not the zero address.