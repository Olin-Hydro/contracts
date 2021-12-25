// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HydroNutrientMix {

    address[] public admin;
    uint256 grow = 500;
    uint256 micro = 125;
    uint256 bloom = 375;

    constructor() {
        admin.push(msg.sender);
    }

    function getNutrients() public view returns (uint256, uint256, uint256){
        return (grow, micro, bloom);
    }

    function updateNutrients(uint256 _grow, uint256 _micro, uint256 _bloom) public onlyAdmin {
        grow = _grow;
        micro = _micro;
        bloom = _bloom;
    }

    function isAdmin(address user) internal view returns (bool) {
        for (uint256 i=0; i < admin.length; i++) {
            if (admin[i] == user) {
                return true;
            }
        }
        return false;
    }

    function addAdmin(address newAdmin) public onlyAdmin{
        admin.push(newAdmin);
    }

    modifier onlyAdmin {
        require(isAdmin(msg.sender));
        _;
    }
}
