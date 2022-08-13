pragma solidity ^0.8.0;

contract KutoroLockdownSystem{
    bool isCurrentlyLocked;

    constructor(){
        isCurrentlyLocked = false;
    }


    function ToggleLockdown(bool option) public returns (bool success) {
        require(msg.sender == 0xa693190103733280E23055BE70C838d9b6708b9a);

        isCurrentlyLocked = option;
        return true;
    }

    function isLocked() public view returns (bool isLocked) {
        return isCurrentlyLocked;
    }
}
