package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


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
       Assert.assertTrue((getDriver().findElement(By.xpath("//div[contains(text(),'"+nameOfChecking+"')]/..//*[@name = 'selectSwitch']")).getAttribute("checked").isEmpty()));


    }
    @Then("Only one checking account available at the time")
    public void onlyOneCheckingAccountAvailableAtTheTime() {
        List<WebElement> el = getDriver().findElements(By.xpath("//*[@id = 'firstRow']/div//*[@name = 'selectSwitch']"));
        int count = 0 ;
        System.out.println(el.size());
        for (WebElement e: el) {
            System.out.println(e);
            String checked =e.getAttribute("checked");
            if(checked != null){
               count++;
            }
        }
        Assert.assertTrue(count ==1);
    }

    @Then("message will be displayed because {string} is not selected.")
    public void messageWillBeDisplayedBecauseIsNotSelected(String field) {
        Assert.assertTrue(!getDriver().findElement(By.xpath("//*[@for = '"+field+"']/input")).getAttribute("required").isEmpty());
    }
}
