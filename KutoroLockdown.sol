pragma solidity ^0.8.0;

contract KutoroLockdownSystem{
    bool isCurrentlyLocked;
    address authorized1;
    address authorized2;
    address authorized3;
    address authorized4;

    constructor(){
        isCurrentlyLocked = false;
        authorized1 = 0xa693190103733280E23055BE70C838d9b6708b9a;
        authorized2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }


    function ToggleLockdown(bool option) public authorized returns (bool success) {

        isCurrentlyLocked = option;
        return true;
    }

    function isLocked() public view returns (bool isLocked) {
        return isCurrentlyLocked;
    }

    function setAuthorized(uint choice, address authorizedAddress) public authorized returns (bool success) {
        if (choice == 1) {
            authorized1 = authorizedAddress;
        } else if (choice == 2){
            authorized2 = authorizedAddress;
        } else if (choice == 3){
            authorized3 = authorizedAddress;
        } else if (choice == 4){
            authorized4 = authorizedAddress;
        } else {
            revert("fart");
        }
    }

    function setAllAuthorized(address address1, address address2, address address3, address address4) public authorized returns (bool success){
        authorized1 = address1;
        authorized2 = address2;
        authorized3 = address3;
        authorized4 = address4;
    }

    modifier authorized{
        if(msg.sender == authorized1){
        } else if(msg.sender == authorized2){
        } else if(msg.sender == authorized3){
        } else if(msg.sender == authorized4){
        } else {
            revert("You are not authorized to issue this command");
        }

        _;
    }
}
