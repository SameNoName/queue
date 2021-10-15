pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract queue {
    string[] public arr;
    //uint8 counter = 0;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    function append (string s) public
    {
        tvm.accept();
        arr.push(s);
    }

    function pop_first () public 
    {
        tvm.accept();
        //delete arr[0];
        //delete arr[counter];
        //++counter;
        string[] buffArr;
        for (uint8 i = 1; i < arr.length; ++i)
        {
            buffArr.push(arr[i]);
        }
        arr = buffArr;
    }
}
