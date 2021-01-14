const core = require("@actions/core");
const github = require("@actions/github");

console.log("😜😜😜 HELLO WORLD 😜😜😜");
console.log("😜😜😜 args = ", process.argv);

const pokemon_name = "Pikachu";
console.log(`::set-output name=pokemon_name::${pokemon_name}`);
debugger;

try {
  // `who-to-greet` input defined in action metadata file
  //   const nameToGreet = core.getInput("who-to-greet");
  //   console.log(`😜😜😜 Hello ${nameToGreet}!`);
  const time = new Date().toTimeString();
  core.setOutput("time", time);
  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2);
  console.log(`😜😜😜 The event payload: ${payload}`);
} catch (error) {
  core.setFailed(error.message);
}
