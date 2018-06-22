package employmentservices.controller.seeker;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import employmentservices.filters.SearchFilter;
import employmentservices.model.seeker.SeekerProfile;
import employmentservices.service.seeker.SeekerService;

@Transactional
@Controller
public class ResumeReadController {

	@Autowired
	SeekerService seekerService;
	
	@RequestMapping(value = "/resumes", method = RequestMethod.GET)
	public String resumeSearch(ModelMap model) {
		SearchFilter<SeekerProfile> seekerFilter = new SearchFilter<SeekerProfile>("", "");
		model.addAttribute("seekerFilter", seekerFilter);

		List<SeekerProfile> foundSeekers = seekerService.findAll();
		model.addAttribute("foundSeekers", foundSeekers);

		return "seekers/resumes";
	}

	@RequestMapping(value = "/resumes", method = RequestMethod.POST)
	public String resumeSearch(@Valid @ModelAttribute("jobFilter") SearchFilter<SeekerProfile> seekerFilter, BindingResult result,
			ModelMap model) {
		List<SeekerProfile> foundSeekers = seekerService.searchBy(seekerFilter.getKeyword(), seekerFilter.getLocation());
		model.addAttribute("seekerFilter", seekerFilter);
		model.addAttribute("foundSeekers", foundSeekers);
		return "seekers/resumes";
	}
	
	@RequestMapping("/resumes/{id}")
	public String resumeDetail(@PathVariable("id") int seekerId, ModelMap model){
		SeekerProfile seeker = seekerService.findById(seekerId);
		model.addAttribute("seeker", seeker);
		return "seekers/resume";
	}
}
