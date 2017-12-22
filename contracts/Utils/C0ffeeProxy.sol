pragma solidity 0.4.15;

/// @title Magic c0ffee proxy
/// @author Stefan George - <stefan@gnosis.pm>
/// @author Alan Lu - <alan.lu@gnosis.pm>
contract C0ffeeProxy {
    function ()
        external
        payable
    {
        assembly {
            calldatacopy(0, 0, calldatasize())
            let success := delegatecall(not(0), 0xc0ffeecafec0ffeecafec0ffeecafec0ffeecafe, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch success
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }
}
