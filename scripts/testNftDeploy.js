async function main() {
    // get contract from contract factory
    const brainnestNFT = await ethers.getContractFactory("MyNFT");
    const brainnestNFTDeploy = await brainnestNFT.deploy();
    // print address of NFT
    console.log("contract deployed to address: ", brainnestNFTDeploy.address);
    console.log(brainnestNFTDeploy);

}

main()
.then(() => process.exit(0))
.catch(error => {
    console.error(error);
    process.exit(1);
})