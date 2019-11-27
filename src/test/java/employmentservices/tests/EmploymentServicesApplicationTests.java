package employmentservices.tests;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import employmentservices.controller.user.HomeController;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmploymentServicesApplicationTests {
	
	@Autowired
    private HomeController controller;
	
	@Test
	public void contextLoads() throws Exception {
		Assert.assertNotNull(controller);
	}

}
