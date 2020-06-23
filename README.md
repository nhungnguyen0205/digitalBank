# orangeHRM
Automation: Selenium + Web Driver + Cucumber + Java  on https://opensource-demo.orangehrmlive.com/
Framework set up : 
  1. INSTALL JAVA 11 (Java Development Kit)
  2. INSTALL GIT (source control management)
  3. INSTALL INTELLIJ (integrated development environment)
  
  
 Checkout the project:
  1. In IDE, select “Check out from Version Control”
  2. Select Git, for URL, choose https://github.com/nhungnguyen0205/orangeHRM.git
  3. Default folder to checkout will go into /IdeaProjects/
  4. Click Clone
  
  Initial project configuration:
    1. After checkout, it will propose to create IntelliJ IDEA project from the sources, click Yes
    2. If it proposes to do Maven Import, agree with it. It might also go with downloading Maven sources, just wait for the tasks to finish for a few minutes
    
  Run project : 
  Open termial and run as following : 
    1. mvn clean test -Dtest=Initialization
    2. mvn clean test -Dtest=login
    3. mvn clean test -Dtest=info
    4. mvn clean test -Dtest=leave

   Note: User on this website sometime is deleted, so if errors occur, please run again from step 1 to step 4 
             
