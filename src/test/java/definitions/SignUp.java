package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

import static support.TestContext.getDriver;

public class SignUp {
    @Given("I open page with url {string}")
    public void iOpenPageWithUrl(String url) {
        getDriver().get(url);
    }

    @When("I select {string} from {string} dropdown list")
    public void iSelectFromDropdownList(String data, String field) {
        Select sl = new Select(getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]/../following-sibling::select")));
        sl.selectByVisibleText(data);
    }

    @And("I type {string} on {string} field")
    public void iTypeOnTextBox(String data, String field) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]/../following-sibling::input")).sendKeys(data);
    }

    @And("I select {string} at {string} field")
    public void iSelectAtField(String data, String fieldName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+fieldName+"')]/..//following::div//*[@value='"+data+"']")).click();
    }

    @And("I click on {string} button")
    public void iClickOnButton(String button) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+button+"')]")).click();
    }

    @Then("I wait some minutes")
    public void iWaitSomeMinutes() throws InterruptedException {
        Thread.sleep(2000);
    }

    @And("I check on {string} field")
    public void iCheckOnField(String field) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]")).click();
    }
    @Then("message {string} will be displayed.")
    public void messageWillBeDisplayed(String message) {
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed());
    }
    @Then("user can not move to next page because Title field is empty")
    public void userCanNotMoveToNextPageBecauseTitleFieldIsEmpty() {
        String text = getDriver().findElement(By.xpath("//*[contains(text(),'Title')]/../following-sibling::select")).getAttribute("required");
        Assert.assertEquals("true",text);
    }


    @Then("user can not move to next page because {string} is empty")
    public void userCanNotMoveToNextPageBecauseIsEmpty(String field) {
        Assert.assertEquals("true",getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]/../following-sibling::input")).getAttribute("required"));
    }

    @Then("user can not move to next page because Gender is empty")
    public void userCanNotMoveToNextPageBecauseGenderIsEmpty() {

        Assert.assertEquals("true",getDriver().findElement(By.xpath("//*[contains(text(),'Gender')]/..//following::div//*[@value='M']")).getAttribute("required"));

    }

    @Then("error message {string} will be displayed.")
    public void errorMessageWillBeDisplayed(String err) {
        Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+err+"')]")).isDisplayed());
    }

    @Then("error message will be displayed.")
    public void errorMessageWillBeDisplayed() {

    }

    @Then("error message about {string} format will be displayed.")
    public void errorMessageAboutFormatWillBeDisplayed(String field) {
       Assert.assertTrue(!getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]/../following-sibling::input")).getAttribute("pattern").isEmpty());
    }

    @Then("user can not move to next page because {string} is not checked.")
    public void userCanNotMoveToNextPageBecauseAgreeTheTermsAndPolicyIsNotChecked(String field) {
        Assert.assertTrue(!getDriver().findElement(By.xpath("//*[contains(text(),'"+field+"')]/../input")).getAttribute("required").isEmpty());
    }
}
