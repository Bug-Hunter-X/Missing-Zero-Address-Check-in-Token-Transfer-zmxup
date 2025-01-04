```solidity
function transfer(address _to, uint256 _value) public {
  require(balances[msg.sender] >= _value, "Insufficient balance");
  balances[msg.sender] -= _value;
  balances[_to] += _value;
  emit Transfer(msg.sender, _to, _value);
}
```
The `transfer` function is missing a check for the zero address.  Sending tokens to address(0) can cause unexpected behavior or even silently fail, leading to loss of funds.