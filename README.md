# soaritudeChallenge

Installation instructions:
1. Create a folder for the project:
    a. Name it SoaritudeChallenge.

2. Open Visual Studio Code, and create a new project:
    a. View menu > Command palette > SFDX create Project.
    b. Select standard.
    c. Name it SoaritudeChallenge.
    d. Selecte previously created folder.

3. Authorize the Developer org
    a. View menu > Command palette > SFDX Authorize an org
    b. Choose project default
    c. Name the project SoaritudeChallenge
    d. Your browser is going to prompt with a Salesforce login
    e. login using provided credential
    f. Allow the OAuth process

4. Upload static files, logos, icons, images
    a. Setup > Static Resources > New
    b. Upload the file images/Soaritude_log.png and name it: logo_soaritude
    c. Upload the file images/footer_illustration.png and name it: footer_illustration

5. Add the Lightning web components to the lwc folder and deploy to the org from VS Code
    a. Paste the folder provided in the zip file into: your-user-root-directory\SoaritudeChallenge\force-app\main\default\lwc\
    b. Deploy Lwc from VS Code to org

6. Add the Apex Class and Unit Test to the classes folder and deploy to the org from VS Code
    a. Paste the folder provided in the zip file into: your-user-root-directory\SoaritudeChallenge\force-app\main\default\classes\
    b. Deploy apex class and test from VS Code to org

7. Create a Lightning Component Tab
    a. Setup > Tabs > Click New (Lightning Component Tabs section).
    b. Add the Lwc (c:soaritude) to the Tab.
    c. Name it Challenge.
    d. Leave Profiles as default.

8. Create a Lightning App to place the component Tab
    a. Go to Setup > App Manager.
    b. Create a new Lightning App.
    c. Name it Soaritude.
    d. Use the file images/Soaritude_logo_tab.png for the tab icon.
    e. In Org theme options click the option below, and then click Next.
    f. In the next screen check that Desktop and phone is selected for the supported
    form factors, and click Next.
    g. Click Next on utility items.
    h. In the Navigation Items screen, select Challenge and add it to the right column,
    then click Next.
    i. In the User Profiles section add System Administrator, and click Save & Finish.

9. Go to App Launcher
    a. Look for Soaritude and click it, you should see the component in the only tab
    from the App.