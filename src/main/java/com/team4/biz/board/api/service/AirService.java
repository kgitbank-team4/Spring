package com.team4.biz.board.api.service;

import com.team4.biz.board.api.vo.AirVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.util.ArrayList;
import java.util.List;

@Service
public class AirService implements ApiService {
    /*public static void main(String[] args) {
        //System.out.println(new AirVO().getServiceKey());
        new AirService().getAirInfo(new AirVO());
    }*/
    public List<AirVO> getAirInfo(AirVO vo) {
        List<AirVO> ls = new ArrayList<>();
        /*vo.setSchStTime("2000");
        vo.setSchEdTime("2200");
        vo.setSchLineType("D");
        vo.setSchIOType("O");
        vo.setSchAirCode("GMP");*/
        int page = 1;    // 페이지 초기값
        try {
            while (true) {
                // parsing할 url 지정(API 키 포함해서)
                //System.out.println(vo.toString());
                String url = "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList" +
                        "?ServiceKey=" + vo.getServiceKey() + "&schStTime=" + vo.getSchStTime() +
                        "&schEdTime=" + vo.getSchEdTime() + "&schLineType=" + vo.getSchLineType() +
                        "&schIOType=" + vo.getSchIOType() +
                        "&schAirCode=" + vo.getSchAirCode() + "&pageNo=" + page;

                //System.out.println(url);

                DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
                DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
                Document doc = dBuilder.parse(url);

                // root tag
                doc.getDocumentElement().normalize();
                //System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

                // 파싱할 tag
                NodeList nList = doc.getElementsByTagName("item");
                NodeList cnt = doc.getElementsByTagName("body");
                Node nodeCnt = cnt.item(0);
                Element cntElement = (Element) nodeCnt;
                int totalCount = Integer.parseInt(getTagValue("totalCount", cntElement));
                //System.out.println("총 데이터수 : " + totalCount);
                //System.out.println("파싱할 리스트 수 : " + nList.getLength());

                for (int temp = 0; temp < nList.getLength(); temp++) {
                    AirVO avo = new AirVO();
                    Node nNode = nList.item(temp);
                    if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                        Element eElement = (Element) nNode;
                        //System.out.println("######################");
                        //System.out.println(eElement.getTextContent());
                        try {
                            //System.out.println("항공사  : " + getTagValue("airlineKorean", eElement));
                            avo.setAirlineKorean(getTagValue("airlineKorean", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("항공사  : " + "없음");
                            avo.setAirlineKorean(" ");
                        }
                        try {
                            //System.out.println("항공편명  : " + getTagValue("airFln", eElement));
                            avo.setAirFln(getTagValue("airFln", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("항공편명  : " + "없음");
                            avo.setAirFln(" ");
                        }
                        try {
                            //System.out.println("구분  : " + getTagValue("line", eElement));
                            avo.setLine(getTagValue("line", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("구분  : " + "없음");
                            avo.setLine(" ");
                        }
                        try {
                            //System.out.println("탑승구 : " + getTagValue("gate",eElement));
                            avo.setGate(getTagValue("gate", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("탑승구 : " + "없음");
                            avo.setGate(" ");
                        }

                        try {
                            avo.setRmkKor(getTagValue("rmkKor", eElement));
                        } catch (NullPointerException e) {
                            avo.setRmkKor(" ");
                        }

                        try {
                            //System.out.println("도착공항 : " + getTagValue("arrivedKor", eElement));
                            avo.setArrivedKor(getTagValue("arrivedKor", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("도착공항 : " + "없음");
                            avo.setArrivedKor(" ");
                        }

                        try {
                            //System.out.println("출발공항 : " + getTagValue("boardingKor", eElement));
                            avo.setBoardingKor(getTagValue("boardingKor", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("출발공항 : " + "없음");
                            avo.setBoardingKor(" ");
                        }
                        try {
                            //System.out.println("예정시간  : " + getTagValue("std", eElement));
                            avo.setStd(getTagValue("std", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("예정시간  : " + "없음");
                            avo.setStd(" ");
                        }
                        try {
                            //System.out.println("변경시간  : " + getTagValue("etd", eElement));
                            avo.setEtd(getTagValue("etd", eElement));
                        } catch (NullPointerException e) {
                            //System.out.println("변경시간  : " + "xxxx");
                            avo.setEtd(" ");
                        }
                        ls.add(avo);
                    }
                    // for end
                }    // if end

                page += 1;
                //System.out.println("page number : " + page);
                if (page > totalCount / 10 + 1) {
                    break;
                }
            }    // while end

        } catch (Exception e) {
            e.printStackTrace();
        }
        /*System.out.println(ls.get(0).toString());*/
        return ls;
    }
}
