import {ethers} from "hardhat";
async function main() {
 
    const TaskManager = await ethers.getContractFactory("TaskManager");
    const taskManager = await TaskManager.deploy();
    console.log(`TaskManager deployed at: ${await taskManager.getAddress()}`);

}


// Run script
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });