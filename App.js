import { useState, useEffect } from 'react';
import { ethers } from 'ethers';
import Voting from './contracts/Voting.json';

function App() {
  const [polls, setPolls] = useState([]);
  const [provider, setProvider] = useState(null);
  const [contract, setContract] = useState(null);

  useEffect(() => {
    if (window.ethereum) {
      const provider = new ethers.providers.Web3Provider(window.ethereum);
      setProvider(provider);

      const contractAddress = "YOUR_CONTRACT_ADDRESS";
      const contract = new ethers.Contract(contractAddress, Voting.abi, provider.getSigner());
      setContract(contract);
    } else {
      console.log("Please install MetaMask");
    }
  }, []);

  const createPoll = async (question, options) => {
    const tx = await contract.createPoll(question, options);
    await tx.wait();
  };

  const vote = async (pollId, optionId) => {
    const tx = await contract.vote(pollId, optionId);
    await tx.wait();
  };

  const getPolls = async () => {
    const polls = await contract.polls();
    setPolls(polls);
  };

  return (
    <div>
      <h1>Decentralized Voting DApp</h1>
      {/* UI for creating poll, voting, and viewing results */}
    </div>
  );
}

export default App;
