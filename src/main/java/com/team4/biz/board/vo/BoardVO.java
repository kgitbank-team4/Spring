package com.team4.biz.board.vo;

public class BoardVO {
    private int id;
    private String boardname;
    private String sort;
    private String keyword;
    private String search_style;
    private int writer_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBoardname() {
        return boardname;
    }

    public void setBoardname(String boardname) {
        this.boardname = boardname;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getSearch_style() {
        return search_style;
    }

    public void setSearch_style(String search_style) {
        this.search_style = search_style;
    }

    public int getWriter_id() {
        return writer_id;
    }

    public void setWriter_id(int writer_id) {
        this.writer_id = writer_id;
    }
}
