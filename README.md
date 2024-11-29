
# DegenToken Project for Avalanche

DegenToken is an ERC20-compatible token built for the Degen Gaming platform on the Avalanche blockchain. It facilitates the rewarding, transferring, redeeming, and burning of in-game tokens for players.

## Features

1. **Minting New Tokens**: 
   - Only the owner of the contract can mint new tokens to distribute as player rewards.
   - Tokens can be minted to any valid address.

2. **Token Redemption**: 
   - Players can redeem tokens for in-game items or rewards.
   - Redeemed tokens are burned, ensuring they cannot be reused.

3. **Checking Balances**: 
   - Players can check their current token balance with a user-friendly function.

4. **Burning Tokens**: 
   - Any player can burn tokens they no longer need.



## Contract Functions

### `mint(address to, uint256 amount)`
- **Description**: Allows the owner to mint new tokens.
- **Access Control**: Restricted to the contract owner.
- **Parameters**:
  - `to`: Address to receive the minted tokens.
  - `amount`: Number of tokens to mint.

### `redeem(uint256 amount)`
- **Description**: Players can redeem tokens for in-game items.
- **Access Control**: Open to all players.
- **Parameters**:
  - `amount`: Number of tokens to redeem.
- **Logic**:
  - Burns the redeemed tokens.
  - Additional logic for in-game rewards can be added here.

### `getBalance()`
- **Description**: Returns the token balance of the caller.
- **Access Control**: Open to all players.

### `burnTokens(uint256 amount)`
- **Description**: Allows players to burn their own tokens.
- **Access Control**: Open to all players.
- **Parameters**:
  - `amount`: Number of tokens to burn.



## Deployment

1. Install dependencies:
   ```bash
   npm install
   ```

2. Compile the contract:
   ```bash
   npx hardhat compile
   ```

3. Deploy to the Avalanche Fuji Testnet:
   - Update your `hardhat.config.js` with the Fuji network details.
   - Run the deployment script:
     ```bash
     npx hardhat run scripts/deploy.js --network fuji
     ```

4. Verify contract on Snowtrace

## Authors
- Eimee Suzanne Marzan

## License

This project is licensed under the MIT License.
