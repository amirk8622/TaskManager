# Decentralized-Based Task Manager
This project demonstrates a **decentralized task management system** built on **BNB Smart Chain Testnet** using **Solidity** and **Hardhat**. The smart contract allows users to **add, edit, complete, and delete tasks** in a **secure and decentralized** way.

---

## 📂 Project Structure

/task-manager/ │── contracts/ │ ├── TaskLibrary.sol # Defines Task struct & events │ ├── TaskManager.sol # Main contract with task logic │── scripts/ │ ├── deploy.js # Deployment script │── test/ │ ├── TaskManager.test.js # Test cases for the contract │── hardhat.config.js # Hardhat configuration for BSC │── package.json # Dependencies & scripts │── .env # Environment variables │── README.md # Project documentation


---

## 🛠️ Setup & Installation
1. **Clone the repository**
   ```sh
   git clone https://github.com/yourusername/task-manager.git
   cd task-manager
  
### **2️⃣ Install dependencies**
npm install


### **3️⃣ Set up environment variables**
Create a `.env` file in the root directory and add the following:
BSC_TESTNET_RPC=https://data-seed-prebsc-1-s1.binance.org:8545
PRIVATE_KEY=your_wallet_private_key BSCSCAN_API_KEY=your_bscscan_api_key


---

## 🔧 Smart Contracts
### **1️⃣ TaskLibrary.sol**

Defines the Task struct.
Stores all task-related events.


### **2️⃣ TaskManager.sol**

Implements task CRUD operations.
Uses Ownable from OpenZeppelin for access control.
Imports TaskLibrary for struct & events.


---

## 🚀 Deployment Guide
### **1️⃣ Compile the Contracts**

npx hardhat compile


### **2️⃣ Deploy to BSC Testnet**
npx hardhat run scripts/deploy.js --network bscTestnet


### **3️⃣ Verify on BscScan**

npx hardhat verify --network bscTestnet DEPLOYED_CONTRACT_ADDRESS


---

## 🧪 Running Tests

Run the smart contract tests using Hardhat: npx hardhat test

Run with gas report: REPORT_GAS=true npx hardhat test

---

## 📌 Hardhat Commands

npx hardhat help
npx hardhat compile
npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js --network bscTestnet

---

## 🔗 Contract Addresses

Network	Contract Address
BSC Testnet	0x4870457C66F081b93F380D07Fa16F9bCA1748315



---

## 📜 Example Transactions

const taskManager = await ethers.getContractAt("TaskManager", "0x...");

// Add a new task await taskManager.addTask("Finish Report", "Complete the Q1 sales report");

// Get a task await taskManager.getTask(0);

// Mark task as completed await taskManager.markTaskCompleted(0);


---

## 📎 Future Improvements

🌍 Frontend with React & Ethers.js
📜 User authentication via MetaMask
🔄 Task History & Restoring Deleted Tasks


```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.ts
```
