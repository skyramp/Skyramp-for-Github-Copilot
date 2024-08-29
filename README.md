# What is Skyramp

The Skyramp Agent Extension acts as your personal quality engineer transforming functional test creation and execution. Through the intuitive and conversational interface of Copilot, you can now easily generate and automatically execute tests ensuring the reliability of your interfaces.

# Get Started with Skyramp

This repository is meant as a Getting Started guide for new users wanting to try out the Skyramp for Copilot extension. You can install the Skyramp for Copilot app [here](https://github.com/apps/skyramp) and start interacting with it using `@skyramp` in the Copilot chat. There will be a quick authorization flow and you are ready to start chatting with the agent.

To further simplify the experience in generating and executing tests, Skyramp integrates with GitHub Codespaces to create and manage virtual environments. We therefore require you to have Codespaces access enabled on your account.

This repository also includes the following files: 

- **OpenAPI spec examples:** We provide a few example OpenAPI specs of public APIs that Skyramp can generate and execute different test types for, in just seconds.
- **Devcontainer Configuration:**  GitHub Codespaces requires a `devcontainer` configuration when instantiating a virtual environment. We have created a configuration for this repository that will successfully install and bring up Skyramp in a Codespace. At a high level, this configuration will:
    - Install dependencies such as `python` and the `gh` CLI tool
    - Open ports on the GitHub Codespace so you can easily view test results on the Skyramp dashboard
    - Run a script to install the Skyramp tool, configure the opened ports, and finally bring up all of the Skyramp processes and containers

## Below are a few prompts for you to test out some of Skyramp’s functionality:

- **Learn about Skyramp**
    - “What can you do?”
    - How will you run my tests?”
- **Test recommendations**
    - “What does a contract test achieve?”
    - “How would a Skyramp-generated integration test help validate my app?”
    - “What test checks my APIs behavior for random input?”
- **Gather relevant input**
    - “What is the service address for the Coingecko API?”
    - “What port does the Coingecko API use?”
- **Generate and run functional tests**
    - “What test types can you generate for me?“
    - “Can you generate a test for the Coingecko API?”
    - “Can you generate a contract test using the OpenAPI spec located examples/coin_gecko.json?”
    - “Can you find the service address and used port for the Coingecko API?”
    - “Next, can you generate and run a fuzz test for this API?”
- **View test results**
    - “Where can I view the results of the executed tests?”
- **Interact with Codespaces**
    - “What do I need to spin up a Codespace?”
    - “Can you bring up a Codespace to execute my tests?”
    - “What is the status of my Codespace?”
