package definitions;

import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Login {
    @Then("{string} will be displayed at the top right corner")
    public void willBeDisplayedAtTheTopRightCorner(String userName) {
       Assert.assertTrue(getDriver().findElement(By.xpath("//*[contains(text(),'"+userName+"')]")).isDisplayed());
    }

    @Then("message with content {string} will be displayed.")
    public void messageWithContentWillBeDisplayed(String err) {
        String actl = getDriver().findElement(By.xpath("//*[contains(text(),'Error')]/..")).getText();
        Assert.assertTrue(actl.contains(err));
    }
}
