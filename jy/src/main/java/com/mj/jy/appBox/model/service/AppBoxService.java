package com.mj.jy.appBox.model.service;

import java.util.List;

import com.mj.jy.appBox.model.vo.DisContentDto;
import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.approval.model.vo.ApprovalDto;
import com.mj.jy.member.model.vo.AllMemberDto;

public interface AppBoxService {
	
	/** sujin1. 결재미완료 보고서들
	 * @param memberNo 로그인한 회원정보
	 * @return
	 */
	List<SentAppBoxDto> getSentAppBox(int memberNo);
	
	/** sujin2. 결재완료된 보고서들
	 * @param memberNo 로그인한 회원정보
	 * @return
	 */
	List<SentAppBoxDto> getEndSentAppBox(int memberNo);
	
	/** sujin3. 보고서 상세조회
	 * @param sentAppBoxDto no=reportNo
	 * @return
	 */
	ReportDto getOneReport(int reportNo);
	
	/** sujin4. 보고서 결재요청받은 상급자들
	 * @param reportNo
	 * @return
	 */
	List<AllMemberDto> getSupervisers(int reportNo);
	
	/** sujin5. 결재타입정보
	 * @return
	 */
	List<ApprovalDto> getApprovalTypes();
	
	/** sujin6. 승인요청 보고서들
	 * @param memberNo 로그인한 회원정보
	 * @return
	 */
	List<SentAppBoxDto> getReceiveAppBox(int memberNo);
	
	/** sujin7. 승인완료 보고서들
	 * @param memberNo 로그인한 회원정보
	 * @return
	 */
	List<SentAppBoxDto> getEndReceiveAppBox(int memberNo);
	
	/** sujin8. 결의서 상세조회
	 * @param disbursementNo
	 * @return
	 */
	DisbursementDto getOneDis(int disbursementNo);
	
	/** sujin9. 결의서 결재요청받은 상급자들
	 * @param disbursementNo
	 * @return
	 */
	List<AllMemberDto> getDisSupervisers(int disbursementNo);
	
	/** sujin10. 결의서 내용 상세조회
	 * @param disbursementNo
	 * @return
	 */
	List<DisContentDto> getDisContents(int disbursementNo);
}
