// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IERC20 {
    function transfer(address recipient, uint amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint amount) external returns (bool);
    function balanceOf(address account) external view returns (uint);
}

contract LotteryVault {
    IERC20 public token;
    address public owner;
    address[] public participants;
    mapping(address => uint) public balances;

    uint public totalDeposits;
    uint public ticketPrice;
    bool public lotteryActive;

    event Deposited(address indexed participant, uint amount);
    event LotteryWinner(address indexed winner, uint amount);
    event LotteryEnded();

    constructor(address _token, uint _ticketPrice) {
        token = IERC20(_token);
        owner = msg.sender;
        ticketPrice = _ticketPrice;
        lotteryActive = true;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier onlyWhenActive() {
        require(lotteryActive, "Lottery is not active");
        _;
    }

    function deposit() external onlyWhenActive {
        require(token.balanceOf(msg.sender) >= ticketPrice, "Insufficient token balance");
        token.transferFrom(msg.sender, address(this), ticketPrice);

        if (balances[msg.sender] == 0) {
            participants.push(msg.sender);
        }
        balances[msg.sender] += ticketPrice;
        totalDeposits += ticketPrice;

        emit Deposited(msg.sender, ticketPrice);
    }

    function endLottery() external onlyOwner onlyWhenActive {
        require(participants.length > 0, "No participants in the lottery");
        
        uint winnerIndex = random() % participants.length;
        address winner = participants[winnerIndex];
        uint prizeAmount = totalDeposits;

        token.transfer(winner, prizeAmount);

        emit LotteryWinner(winner, prizeAmount);
        emit LotteryEnded();

        _resetLottery();
    }

    function _resetLottery() private {
        totalDeposits = 0;
        delete participants;
        lotteryActive = false;
    }

    function restartLottery(uint _ticketPrice) external onlyOwner {
        require(!lotteryActive, "Lottery is already active");
        ticketPrice = _ticketPrice;
        lotteryActive = true;
    }

    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, participants.length)));
    }

    function getParticipantBalance(address participant) external view returns (uint) {
        return balances[participant];
    }
}
