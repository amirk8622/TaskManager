import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomicfoundation/hardhat-verify";


const BSC_TESTNET_RPC= "7f524b8af58048f2944071d5fc5a03c2"
const PRIVATE_KEY= "240b4f427e1d9d521ea109a19fc71f9c3ff73b4952ed6e58e5d1d25f06ad5bdb"

const config: HardhatUserConfig = {
  solidity: "0.8.28",

  networks: {
    bscTestnet: {
      url: `https://bsc-testnet.infura.io/v3/${BSC_TESTNET_RPC}`,
      accounts: [`${PRIVATE_KEY}`],
    },
  },
  etherscan: {
    apiKey: {
      bscTestnet: process.env.BSCSCAN_API_KEY as string,  // ✅ Ensure correct format
    },
  },
  sourcify: {
    // Disabled by default
    // Doesn't need an API key
    enabled: true
  }


};

export default config;
