package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Checking {
    @When("I click on {string} on the left menu")
    public void iClickOnOnTheLeftMenu(String menu) {
        getDriver().findElement(By.xpath("//*[text()='"+menu+"']")).click();
    }

    @And("I click on {string} on the sub menu")
    public void iClickOnOnTheSubMenu(String submenu) {
        getDriver().findElement(By.xpath("//*[text()='"+submenu+"']")).click();
    }

    @Then("{string} page will be displayed")
    public void pageWillBeDisplayed(String page) {
       Assert.assertTrue(getDriver().findElement(By.xpath("//*[text()='"+page+"']")).isDisplayed());
    }
}
