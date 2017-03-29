/**
 * 
 */
package com.codersedge.framework.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ruzan
 *
 */
@Controller
@RequestMapping("/backend")
public class BackendController {

	
	@RequestMapping("")
    public String getBackend() {
        return "backend/home";
    }
}
