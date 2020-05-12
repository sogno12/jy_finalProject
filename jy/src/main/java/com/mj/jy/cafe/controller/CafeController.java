package com.mj.jy.cafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mj.jy.cafe.model.service.CafeService;
import com.mj.jy.cafe.model.vo.Menu;

@Controller
public class CafeController {
	
	@Autowired
	private CafeService caService;
	
	
	/** 카페테리아 메인 view
	 * @return
	 */
	@RequestMapping("cafeTeria.ca")
	public String cafeList() {
		return "convenience/cafe/cafeteria";
	}
	
	// 아메리카노 담기
	@RequestMapping("insertAme.ca")
	public String insertAme(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		} else {
			model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	// 카페라떼 담기
	@RequestMapping("insertCl.ca")
	public String insertCl(Menu m, Model model) {
		
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
				return "common/errorPage";
			}
		}

	// 카페모카 담기
	@RequestMapping("insertCm.ca")
	public String insertCm(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
		}
	}
	// 카라멜마끼야또 담기
	@RequestMapping("insertCame.ca")
	public String insertCame(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
				return "common/errorPage";
		}
	}
	
	// 카푸치노 담기
	@RequestMapping("insertCh.ca")
	public String insertCh(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
	}
}
	// 바닐라라떼 담기
	@RequestMapping("insertVn.ca")
	public String insertVn(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
				return "common/errorPage";
		}
	}
	// 시나몬 라떼 담기
	@RequestMapping("insertCnl.ca")
	public String insertCnl(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
	}
}
	// 에스프레소 담기
	@RequestMapping("insertEs.ca")
	public String insertEs(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
	}
}
	// 핫초코 담기
	@RequestMapping("insertHc.ca")
	public String insertHc(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 블랙티 얼그레이 담기
	@RequestMapping("insertHerb.ca")
	public String insertHerB(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	// 허브티 캐모마일 담기
	@RequestMapping("insertHerc.ca")
	public String insertHerC(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 허브티 페퍼민트 담기
	@RequestMapping("insertHerp.ca")
	public String insertHerP(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	// 허브티 로즈마리 담기
	@RequestMapping("insertHerr.ca")
	public String insertHerR(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 허브티 자스민 담기
	@RequestMapping("insertHerj.ca")
	public String insertHerJ(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	// 아카시아 꿀차 담기
	@RequestMapping("insertHera.ca")
	public String insertHerA(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 플레인 요거트 스무디 담기
	@RequestMapping("insertySm.ca")
	public String insertYsm(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	// 프리미엄 요거트 스무디 담기
	@RequestMapping("insertypSm.ca")
	public String insertYpsm(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 프리미엄 스무디 블루베리 담기
	@RequestMapping("insertypbSm.ca")
	public String insertYpbsm(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	// 프리미엄 스무디 유자 담기
	@RequestMapping("insertypcSm.ca")
	public String insertYpcsm(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	// 과일 스무디 딸기 담기
	@RequestMapping("insertypsSm.ca")
	public String insertSsm(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	// 과일 스무디 망고 담기
	@RequestMapping("insertypmSm.ca")
	public String insertMsm(Menu m, Model model) {
		
		int result = caService.insertMenu(m);
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			model.addAttribute("msg", "주문에 실패했습니다.");
		return "common/errorPage";
		}
	}
	
	
	// 홍시 스무디 담기
	@RequestMapping("insertyppsSm.ca")
	public String insertPsm(Menu m, Model model) {
			
			int result = caService.insertMenu(m);
			if(result > 0) {
				return "convenience/cafe/cafeteria";
			}else {
				model.addAttribute("msg", "주문에 실패했습니다.");
			return "common/errorPage";
			}
		}
	
	@ResponseBody
	@RequestMapping(value="selectCafe.ca", produces="application/json; charset=utf-8")
	public String selectCafe(int memberNo) {
		
		List<Menu> selectCafe = caService.selectCafe(memberNo);
		
		return new Gson().toJson(selectCafe);
	}
	
	@RequestMapping("insertCafe.ca")
	public String updateCafe(int memberNo) {
		
		int result = caService.updateCafe(memberNo);
		
		if(result > 0) {
			return "convenience/cafe/cafeteria";
		}else {
			return "common/errorPage";
		}
	}
	
	
	
	
	
}
