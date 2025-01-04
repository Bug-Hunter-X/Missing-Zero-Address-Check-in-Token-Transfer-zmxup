```solidity
function transfer(address _to, uint256 _value) public {
  require(_to != address(0), "Transfer to the zero address");
  require(balances[msg.sender] >= _value, "Insufficient balance");
  balances[msg.sender] -= _value;
  balances[_to] += _value;
  emit Transfer(msg.sender, _to, _value);
}
```
The solution adds `require(_to != address(0), "Transfer to the zero address");` to prevent transfers to the zero address.