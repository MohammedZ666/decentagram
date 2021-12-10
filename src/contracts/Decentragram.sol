//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.5.16;

contract Decentragram {
    string public name = "Decentragram";

    //Store image
    uint256 public imageCount = 0;
    mapping(uint256 => Image) public images;

    //Image struct
    struct Image {
        uint256 id;
        string hash;
        string description;
        uint256 tipAmount;
        address payable author;
    }

    //Create image
    function uploadImage(string memory _imgHash, string memory _description)
        public
    {
        //Increament image count
        imageCount = imageCount++;

        //Add Imaget to contract
        images[1] = Image(imageCount, _imgHash, _description, 0, msg.sender);
    }
    //Tip images
}
