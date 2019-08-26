package com.team4.biz.board.api.vo;

public class AirVO {
    //parameter
    private String schStTime;//시작시간
    private String schEdTime;//끝시간
    private String schLineType;//국제 or 국내
    private String schIOType;//출발 or 도착
    private String schAirCode;//공항코드
    private static final String serviceKey = "91Si4e3u%2FHRQC7KS0M02t%2FXBe%2Fw48icrY8dIo2YIAZ36jr9RXn%2BdjhVQ7k5AMF3%2F49yLlqf0E1sU22PfQ0B2ng%3D%3D";
    //return
    private String airFln;//항공편명
    private String airlineKorean;//항공사(국문)
    private String airport;//기준공항코드
    private String arrivedKor;//도착공항(국문)
    private String boardingKor;//출발공항(국문)
    private String std;//예정시간
    private String etd;//변경시간
    private String io;//출발 or 도착
    private String line;//국내국제구분
    private String gate;//탑승구
    private String rmkKor;//항공편상태(국문)
    private String totalCount;//데이터총계

    public String getSchStTime() {
        return schStTime;
    }

    public void setSchStTime(String schStTime) {
        this.schStTime = schStTime;
    }

    public String getSchEdTime() {
        return schEdTime;
    }

    public void setSchEdTime(String schEdTime) {
        this.schEdTime = schEdTime;
    }

    public String getSchLineType() {
        return schLineType;
    }

    public void setSchLineType(String schLineType) {
        this.schLineType = schLineType;
    }

    public String getSchIOType() {
        return schIOType;
    }

    public void setSchIOType(String schIOType) {
        this.schIOType = schIOType;
    }

    public String getSchAirCode() {
        return schAirCode;
    }

    public void setSchAirCode(String schAirCode) {
        this.schAirCode = schAirCode;
    }

    public static String getServiceKey() {
        return serviceKey;
    }

    public String getAirFln() {
        return airFln;
    }

    public void setAirFln(String airFln) {
        this.airFln = airFln;
    }

    public String getAirlineKorean() {
        return airlineKorean;
    }

    public void setAirlineKorean(String airlineKorean) {
        this.airlineKorean = airlineKorean;
    }

    public String getAirport() {
        return airport;
    }

    public void setAirport(String airport) {
        this.airport = airport;
    }

    public String getArrivedKor() {
        return arrivedKor;
    }

    public void setArrivedKor(String arrivedKor) {
        this.arrivedKor = arrivedKor;
    }

    public String getBoardingKor() {
        return boardingKor;
    }

    public void setBoardingKor(String boardingKor) {
        this.boardingKor = boardingKor;
    }

    public String getStd() {
        return std;
    }

    public void setStd(String std) {
        this.std = std;
    }

    public String getEtd() {
        return etd;
    }

    public void setEtd(String etd) {
        this.etd = etd;
    }

    public String getIo() {
        return io;
    }

    public void setIo(String io) {
        this.io = io;
    }

    public String getLine() {
        return line;
    }

    public void setLine(String line) {
        this.line = line;
    }

    public String getGate() {
        return gate;
    }

    public void setGate(String gate) {
        this.gate = gate;
    }

    public String getRmkKor() {
        return rmkKor;
    }

    public void setRmkKor(String rmkKor) {
        this.rmkKor = rmkKor;
    }

    public String getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(String totalCount) {
        this.totalCount = totalCount;
    }

    @Override
    public String toString() {
        return "AirVO{" +
                "schStTime='" + schStTime + '\'' +
                ", schEdTime='" + schEdTime + '\'' +
                ", schLineType='" + schLineType + '\'' +
                ", schIOType='" + schIOType + '\'' +
                ", schAirCode='" + schAirCode + '\'' +
                ", airFln='" + airFln + '\'' +
                ", airlineKorean='" + airlineKorean + '\'' +
                ", airport='" + airport + '\'' +
                ", arrivedKor='" + arrivedKor + '\'' +
                ", boardingKor='" + boardingKor + '\'' +
                ", std='" + std + '\'' +
                ", etd='" + etd + '\'' +
                ", io='" + io + '\'' +
                ", line='" + line + '\'' +
                ", gate='" + gate + '\'' +
                ", rmkKor='" + rmkKor + '\'' +
                ", totalCount='" + totalCount + '\'' +
                '}';
    }
}
