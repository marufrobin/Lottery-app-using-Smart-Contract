contract Lottery {
    address public owner;
    address payable[] players;

    constructor() {
        owner = msg.sender;
    }

    function entry() public payable {
        require(msg.value >= 1 ether);
        players.push(payable(msg.sender));
    }

    function random() public view returns (uint256) {
        // return
        uint256 initialNumber;
        return uint256(keccak256(abi.encodePacked(initialNumber++))) % players.length;
        // uint256(
        //     keccak256(
        //         abi.encodePacked(
        //             block.timestamp,
        //             block.difficulty,
        //             msg.sender
        //         )
        //     )
        // ) % players.length;
    }

    function playersList() public view returns (address payable[] memory) {
        return players;
    }
}
