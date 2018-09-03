pragma solidity ^0.4.17;
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract Daq is StandardToken, Ownable {
  string public name = "DAQBET"; 
  string public symbol = "DAQ";
  uint public decimals = 8;
  uint public INITIAL_SUPPLY = 300000000 * (10 ** decimals);

  function Daq() public {
    totalSupply_ = INITIAL_SUPPLY;
    owner = msg.sender;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
