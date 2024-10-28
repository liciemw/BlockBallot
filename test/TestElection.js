// TestElection.js
const Election = artifacts.require("./Election.sol");

contract("Election", function(accounts) {
  let electionInstance;

  it("initializes with two candidates", async function() {
    electionInstance = await Election.deployed();
    const count = await electionInstance.candidatesCount();
    assert.equal(count, 2, "There should be two candidates initially.");
  });

  it("it initializes the candidates with the correct values", async function() {
    const candidate1 = await electionInstance.candidates(1);
    assert.equal(candidate1[0], 1, "contains the correct id");
    assert.equal(candidate1[1], "Candidate 1", "contains the correct name");
    assert.equal(candidate1[2], 0, "contains the correct votes count");

    const candidate2 = await electionInstance.candidates(2);
    assert.equal(candidate2[0], 2, "contains the correct id");
    assert.equal(candidate2[1], "Candidate 2", "contains the correct name");
    assert.equal(candidate2[2], 0, "contains the correct votes count");
  });
});
