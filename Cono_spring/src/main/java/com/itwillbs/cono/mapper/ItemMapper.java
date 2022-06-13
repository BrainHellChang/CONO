package com.itwillbs.cono.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.cono.vo.CouponDTO;
import com.itwillbs.cono.vo.ImgDTO;
import com.itwillbs.cono.vo.OrdDTO;

public interface ItemMapper {
	
	//tfsf
	
	// 상품 상세 정보 조회
	HashMap<String, String> selectItemDetail(String item_idx);
	
	// 상품 이미지 조회
	List<ImgDTO> selectImgList(String item_idx);
	
	// 구매하기 클릭 시 아이템 상태 변경
//	void updateItemStatus(String item_idx);

	// item 테이블 수량 변경
	void updateItemQuantity(OrdDTO ord);
	
	// ord 테이블 insert
	void insertOrd(OrdDTO ord);
	
	// safe 테이블 insert
	void insertSafe(@Param("ord") OrdDTO ord, @Param("item_price") String item_price);

	// coin 테이블 insert (구매자)
	void insertCoin(@Param("ord") OrdDTO ord, @Param("item_price") String item_price, @Param("coin_total") String coin_total, @Param("coupon_price") String coupon_price);
	
	// 상품 수량 체크
	String selectItemQuantity(OrdDTO ord);
	
	// 상품 수량 0일 경우 상품 상태 
	void updateItemStatus(OrdDTO ord);
	
	// 상품 구매 가능 여부 확인 (coin)
	Integer selectCoinTotalValue(@Param("ord") OrdDTO ord, @Param("item_price") String item_price);
	
	// coin_total 값 가져오기
	String selectCoinTotal(String member_id);
	
	// 구매자 정보 가져오기
	HashMap<String, String> selectBuyerInfo(String buyer_id);
	
	// 사용 가능한 할인 쿠폰 가져오기
	List<HashMap<String, String>> selectUsableCoupon(String buyer_id);
	
	// 코인 잔액 조회
	int selectBalanceCoin(String buyer_id);
	
	// 쿠폰 업데이트
	void updateCoupon(@Param("coupon_idx") String coupon_idx, @Param("item_idx") String item_idx);
	
	// 쿠폰 가격 조회
	String selectCouponPrice(String coupon_idx);

	// coin 테이블 insert (판매자)
//	void insertCoinSeller(@Param("ord") OrdDTO ord, @Param("item_price") String item_price);
	
}
