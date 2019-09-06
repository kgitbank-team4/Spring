package com.team4.biz.board.vo;

import java.util.Date;

public class MypageVO {
    private int writer_id;
    private String boardname;
    private int board_id;
    private int article_id;
    private String title;
    private Date date_created;
    private int view_cnt;
    private int up_cnt;
    private String content;
    private String writer;

    public int getWriter_id() {
        return writer_id;
    }

    public void setWriter_id(int writer_id) {
        this.writer_id = writer_id;
    }

    public String getBoardname() {
        return boardname;
    }

    public void setBoardname(String boardname) {
        this.boardname = boardname;
    }

    public int getBoard_id() {
        return board_id;
    }

    public void setBoard_id(int board_id) {
        this.board_id = board_id;
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public int getView_cnt() {
        return view_cnt;
    }

    public void setView_cnt(int view_cnt) {
        this.view_cnt = view_cnt;
    }

    public int getUp_cnt() {
        return up_cnt;
    }

    public void setUp_cnt(int up_cnt) {
        this.up_cnt = up_cnt;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
}
