package com.summer.good.domain;

import com.summer.comm.DTO;

public class Good extends DTO{
	private String goodId;
	private String goodName;
	private String detailMean;
	private String entpId;
	private String entpName;
	private String roadAddrDetail;
	private String XMapCoord;
	private String YMapCoord;
	private int goodPrice;
	private String plusoneYn;
	private String goodDcYn;
	
	public Good() {
		
	}

	public String getGoodId() {
		return goodId;
	}

	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}

	public String getGoodName() {
		return goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public String getDetailMean() {
		return detailMean;
	}

	public void setDetailMean(String detailMean) {
		this.detailMean = detailMean;
	}

	public String getEntpId() {
		return entpId;
	}

	public void setEntpId(String entpId) {
		this.entpId = entpId;
	}

	public String getEntpName() {
		return entpName;
	}

	public void setEntpName(String entpName) {
		this.entpName = entpName;
	}

	public String getRoadAddrDetail() {
		return roadAddrDetail;
	}

	public void setRoadAddrDetail(String roadAddrDetail) {
		this.roadAddrDetail = roadAddrDetail;
	}

	public String getXMapCoord() {
		return XMapCoord;
	}

	public void setXMapCoord(String xMapCoord) {
		XMapCoord = xMapCoord;
	}

	public String getYMapCoord() {
		return YMapCoord;
	}

	public void setYMapCoord(String yMapCoord) {
		YMapCoord = yMapCoord;
	}

	public int getGoodPrice() {
		return goodPrice;
	}

	public void setGoodPrice(int goodPrice) {
		this.goodPrice = goodPrice;
	}

	public String getPlusoneYn() {
		return plusoneYn;
	}

	public void setPlusoneYn(String plusoneYn) {
		this.plusoneYn = plusoneYn;
	}

	public String getGoodDcYn() {
		return goodDcYn;
	}

	public void setGoodDcYn(String goodDcYn) {
		this.goodDcYn = goodDcYn;
	}

	public Good(String goodId, String goodName, String detailMean, String entpId, String entpName,
			String roadAddrDetail, String xMapCoord, String yMapCoord, int goodPrice, String plusoneYn,
			String goodDcYn) {
		super();
		this.goodId = goodId;
		this.goodName = goodName;
		this.detailMean = detailMean;
		this.entpId = entpId;
		this.entpName = entpName;
		this.roadAddrDetail = roadAddrDetail;
		XMapCoord = xMapCoord;
		YMapCoord = yMapCoord;
		this.goodPrice = goodPrice;
		this.plusoneYn = plusoneYn;
		this.goodDcYn = goodDcYn;
	}

	@Override
	public String toString() {
		return "Good [goodId=" + goodId + ", goodName=" + goodName + ", detailMean=" + detailMean + ", entpId=" + entpId
				+ ", entpName=" + entpName + ", roadAddrDetail=" + roadAddrDetail + ", XMapCoord=" + XMapCoord
				+ ", YMapCoord=" + YMapCoord + ", goodPrice=" + goodPrice + ", plusoneYn=" + plusoneYn + ", goodDcYn="
				+ goodDcYn + "]";
	}
	
	
	
	
}
