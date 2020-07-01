package definitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Saving {
    @Then("popup {string} will be displayed")
    public void popupWillBeDisplayed(String popup) {
       Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+popup+"')]")).isDisplayed());
    }

    @When("I click on {string} button on pop up")
    public void iClickOnButtonOnPopUp(String button) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+button+"')]")).click();
    }
}
