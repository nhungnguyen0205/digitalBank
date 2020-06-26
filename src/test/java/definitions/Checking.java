package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.util.List;
import java.util.Map;

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

        //*[contains(text(),'New Checking Account')]
    }

    @When("I select {string}")
    public void iSelect(String checkingType) {
        getDriver().findElement(By.id(checkingType)).click();
    }

    @Then("{string} is displayed with following information and this bank is selected for default bank.")
    public void isDisplayedWithFollowingInformation(String nameOfChecking, DataTable table) {

        List<Map<String, String>> list = table.asMaps(String.class, String.class);
        Assert.assertTrue(getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]")).isDisplayed());
        Assert.assertTrue(getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]/..//*[contains(text(),'Account')]")).getText().contains(list.get(0).get("Account")));
        Assert.assertTrue(getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]/..//*[contains(text(),'Ownership')]")).getText().contains(list.get(0).get("Ownership")));
        Assert.assertTrue(getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]/..//*[contains(text(),'Balance')]")).getText().contains(list.get(0).get("Balance")));
       Assert.assertTrue((getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]/..//*[@name = 'selectSwitch']")).isSelected()));


    }
}
