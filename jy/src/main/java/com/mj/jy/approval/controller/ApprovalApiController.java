package com.mj.jy.approval.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mj.jy.approval.model.service.ApprovalService;
import com.mj.jy.common.model.ResponseStatus;
import com.mj.jy.common.model.Result;
import com.mj.jy.member.model.vo.AllMemberDto;
import com.mj.jy.member.model.vo.SimpleMemberDto;
import com.mj.jy.report.model.vo.Reason;
import com.mj.jy.report.model.vo.ReasonDto;

@RestController
public class ApprovalApiController {

	/*Ajax*/
	private ApprovalService approvalService;
	
	public ApprovalApiController(ApprovalService approvalService) {
		this.approvalService = approvalService;
	}
	
	@GetMapping("reportReason.app")
	public ResponseEntity getReportReasons(int typeNo) {
		// System.out.println(typeNo);
		List<Reason> reasons = approvalService.getReportReasons(typeNo);

		List<ReasonDto> reasonDtos = reasons.stream()
			.map(reason -> new ReasonDto(reason))
			.collect(Collectors.toList());
		
		Result<List<ReasonDto>> response = new Result<>(ResponseStatus.SUCCESS, reasonDtos);
		return ResponseEntity.ok(response);
	}
	
	@GetMapping("superArray.app")
	public ResponseEntity getSupervisor(@RequestParam String[] superArray) {
		List<AllMemberDto> members = approvalService.getMembersIn(superArray);
		
		List<SimpleMemberDto> memberDtos = members.stream()
			.map(member -> new SimpleMemberDto(member))
			.collect(Collectors.toList());
		
		Result<List<SimpleMemberDto>> response = new Result<>(ResponseStatus.SUCCESS, memberDtos);
		return ResponseEntity.ok(response);
	}
	
	@GetMapping("rowSelectNum.app")
	public ResponseEntity getTableRow(int rowNum) {
				
		Result response = new Result(ResponseStatus.SUCCESS, rowNum);
		
		return ResponseEntity.ok(response);
	}
}
