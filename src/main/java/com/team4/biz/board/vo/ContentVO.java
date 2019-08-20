package com.team4.biz.board.vo;

public class ContentVO {
    private int id;
    private String text;
    private String file_address;
    private String file_name;
    private String file_type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getFile_address() {
        return file_address;
    }

    public void setFile_address(String file_address) {
        this.file_address = file_address;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getFile_type() {
        return file_type;
    }

    public void setFile_type(String file_type) {
        this.file_type = file_type;
    }
}
