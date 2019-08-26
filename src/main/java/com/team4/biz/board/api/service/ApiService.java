package com.team4.biz.board.api.service;

import com.team4.biz.board.api.vo.AirVO;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.util.List;

public interface ApiService {
    default String getTagValue(String tag, Element eElement){
        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
        Node nValue = (Node) nlList.item(0);
        if (nValue == null)
            return null;
        return nValue.getNodeValue();
    }
    public List<AirVO> getAirInfo(AirVO vo);
}
