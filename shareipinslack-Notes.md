* https://ident.me fails to get ipv4 address from my mobile network jio.
Only ipv6 is returned. So switched to https://ipinfo.io/ip.

Create a workflow with Slack's Workflow builder


* Login to your paid slack account. 
* Workflow is not available in free account.
* Click the flash icon present in your DM.
* You will be displayed with this.

![Workflow1 page](configs/shareipinslack-screenshot1.png)
* Select "Start from Scratch". 
* Provide a name for your Workflow.

![Workflow2 page](configs/shareipinslack-screenshot2.png)
* Choose "Webhook" in "Choose a way to start this workflow" page.

![Workflow3 page](configs/shareipinslack-screenshot3.png)
 * You can add variables to receive the values sent to the slack.
 
 ![Workflow4 page](configs/shareipinslack-screenshot4.png)
 * This is what I did for my case.
 
 ![Workflow5 page](configs/shareipinslack-screenshot5.png)
 * Click Next.
 ![Workflow6 page](configs/shareipinslack-screenshot8.png)
 
 * Add another step to the workflow like "send a message" or "create a form"
 ![Workflow7 page](configs/shareipinslack-screenshot6.png)
 
 * Customise the message and include the variables you created and choose a channel to send this message to.
 ![Workflow8 page](configs/shareipinslack-screenshot7.png)
 
 * The output will be like this
 ![Output1 page](configs/shareipinslack-output.png)
 