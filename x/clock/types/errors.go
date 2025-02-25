package types

import (
	errorsmod "cosmossdk.io/errors"

	sdkerrors "github.com/cosmos/cosmos-sdk/types/errors"
)

var (
	ErrInvalidAddress            = sdkerrors.ErrInvalidAddress
	ErrContractNotRegistered     = errorsmod.Register(ModuleName, 1, "contract not registered")
	ErrContractAlreadyRegistered = errorsmod.Register(ModuleName, 2, "contract already registered")
	ErrContractRegisterNotAdmin  = errorsmod.Register(ModuleName, 3, "this address is not the contract admin, cannot register")
	ErrContractNotAdmin          = errorsmod.Register(ModuleName, 4, "sender is not the contract admin")
	ErrContractNotCreator        = errorsmod.Register(ModuleName, 5, "sender is not the contract creator")
	ErrContractJailed            = errorsmod.Register(ModuleName, 6, "contract is jailed")
	ErrContractNotJailed         = errorsmod.Register(ModuleName, 7, "contract is not jailed")
	ErrContractAlreadyJailed     = errorsmod.Register(ModuleName, 8, "contract is already jailed")
	ErrInvalidCWContract         = errorsmod.Register(ModuleName, 9, "invalid CosmWasm contract")
	ErrOutOfGas                  = errorsmod.Register(ModuleName, 10, "contract execution ran out of gas")
	ErrContractExecutionPanic    = errorsmod.Register(ModuleName, 11, "contract execution panicked")
)
