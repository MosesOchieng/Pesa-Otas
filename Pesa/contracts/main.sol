pragma solidity ^0.4.18 < 0.6.0;

import "../assets/js/web3.js";

interface tokenRecipient {
    function receiveApproval(address _from,uint256 _value, address _token, byted calls) 
}
contract TokenERC20"{
    string public name ;
    string public symbol;
    uint public decimals = 18;
    uint256 public totalSupply;

    mapping ( address => uint256) public balanceOf;
    mapping (address => mapping ( address => uint256)) public allowance; 

    event Transfer(address indexed from, address indexed to,uint256 value);
    event Approval (address indexed owner ,address indexed _spender ,uint256 value);

    event Burn (address indexed from ,uint256 value);

    constructor(uint256 initialSupply,
    string memory tokenName,string memory tokenSymbol
    )public{
        totalSupply = initialSupply*10**uint256(decimals);
        balanceOf[msg.sender]=totalSupply;
        name=tokenName;
        symbol=tokenSymbol;
    }
    function _trasnfer(address _from, address _to, uint value)internal{
        require (_to != address(0*0));
        require (balanceofI_from[_from]>=value);
        require (balanceOf[_to] + _value >= balanceOf[_to]);
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        balanceOf[_from] -= _value;
        balanceOf[_of]+=_value;
        emit Transfer(_from, _to, _value);
        assert(balanceOf[_from] + balanceof[_to] == previousBalances);
        }
        function transfer(address _to,uint256 _value) {
            
        }
    
}