package com.mj.jy.approval.model.service;

import java.util.List;

import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.approval.model.vo.SuperApprovalDto;
import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.disbursement.model.vo.DisContent;
import com.mj.jy.disbursement.model.vo.DisType;
import com.mj.jy.disbursement.model.vo.Disbursement;
import com.mj.jy.disbursement.model.vo.Method;
import com.mj.jy.disbursement.model.vo.Subject;
import com.mj.jy.member.model.vo.AllMemberDto;
import com.mj.jy.report.model.vo.Reason;
import com.mj.jy.report.model.vo.Report;

public interface ApprovalService {
	
	/* Report Form */
	
	/** sujin1. 보고서 사유 보여주기 (ajax)
	 * @param typeNo 보고서분류 1=휴가신청서, 2=보고서
	 * @return 보고서의 사유
	 */
	List<Reason> getReportReasons(int typeNo);
	
	
	/** sujin2. 보고서 추가
	 * @param report		보고서 정보
	 * @param attachment	첨부파일정보
	 * @param superArray	결재자 정보
	 */
	int enrollReport(Report report, Attachment attachment, String[] superArray);
	
	/** sujin3. 모든 사원 정보
	 * @return
	 */
	List<AllMemberDto> getAllMemberList();
	
	/** sujin4. 선택한 결재자 회원목록 조회
	 * @param superArray
	 * @return
	 */
	List<AllMemberDto> getMembersIn(String[] superArray);
	
	
	/* Disbursement Form */
	
	/** sujin5. 모든 기안서 분류
	 * @return
	 */
	List<DisType> getDisType();
	
	/** sujin6. 모든 계정과목
	 * @return
	 */
	List<Subject> getSubject();
	
	/** sujin7. 모든 결제수단
	 * @return
	 */
	List<Method> getMethod();
	
	/** sujin8. 결의서 추가
	 * @param disbursement	결의서 정보
	 * @param attachment	첨부파일정보
	 * @param superArray	결재자 정보
	 */
	int enrollDisbursement(Disbursement disbursement, Attachment attachment, String[] superArray, List<DisContent> disContents);
	
	
	/* UPDATE */
	
	/** sujin9. Report수정
	 * @param reportDto
	 * @return
	 */
	int updateReport(ReportDto reportDto);
	
	/** sujin10. Dis수정
	 * @param disbursementDto	결의서정보
	 * @param disContents		결의서 내용정보
	 * @return
	 */
	int updateDis(DisbursementDto disbursementDto, List<DisContent> disContents);
	
	
	/* APPROVAL */
	
	/** sujin11. Report 결재
	 * @param superApprovalDto
	 * @return
	 */
	int approvalReport(SuperApprovalDto superApprovalDto);
	
	/** sujin12. Dis 결재
	 * @param superApprovalDto
	 * @return
	 */
	int approvalDis(SuperApprovalDto superApprovalDto);
	
	
	/* DELETE */
	
	/** sujin13. Report 삭제 (->상태 4로 변경)
	 * @param reportNo
	 * @return
	 */
	int deleteReport(int reportNo);
	
	/** sujin14. Dis 삭제 (->상태 4로 변경)
	 * @param disbursementNo
	 * @return
	 */
	int deleteDis(int disbursementNo);


	/** sujin15. oneReport 찾기
	 * @param reportNo
	 * @return
	 */
	ReportDto getOneReport(int reportNo);
	
	/** sujin16. ondDis 찾기
	 * @param disbursementNo
	 * @return
	 */
	DisbursementDto getOneDis(int disbursementNo);
	
	
	/** sujin17.
	 * @param superApprovalDto
	 * @return
	 */
	int theFindeSuper(SuperApprovalDto superApprovalDto);
}
