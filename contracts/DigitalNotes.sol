// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalNotes {
    struct Note {
        string content;
        address owner;
        uint256 timestamp;
        bytes32 txHash;
    }

    Note[] public notes;

    event NoteAdded(address indexed owner, string content, uint256 timestamp, bytes32 txHash, uint256 noteIndex);

    function addNote(string memory _content) public returns (uint256) {
        notes.push(Note(_content, msg.sender, block.timestamp, bytes32(0)));
        emit NoteAdded(msg.sender, _content, block.timestamp, bytes32(0), notes.length - 1);
        return notes.length - 1;
    }

    function updateNoteTxHash(uint256 _index, bytes32 _txHash) public {
        require(_index < notes.length, "Invalid note index");
        require(notes[_index].owner == msg.sender, "Only owner can update");
        notes[_index].txHash = _txHash;
        emit NoteAdded(msg.sender, notes[_index].content, notes[_index].timestamp, _txHash, _index);
    }

    function getNotes() public view returns (Note[] memory) {
        return notes;
    }
}