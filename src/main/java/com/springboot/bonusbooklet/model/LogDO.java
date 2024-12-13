package com.springboot.bonusbooklet.model;

import java.sql.Date;

public class LogDO {
	private int log_idx;
	private int book_ref;
	private String log_title;
	private Date date;
	private int page;
	private String chapter;
	private float rating;
	private String review;
	private String log_image;
	private String hashtag;
	
	public int getLog_idx() {
		return log_idx;
	}
	public void setLog_idx(int log_idx) {
		this.log_idx = log_idx;
	}
	public int getBook_ref() {
		return book_ref;
	}
	public void setBook_ref(int book_ref) {
		this.book_ref = book_ref;
	}
	public String getLog_title() {
		return log_title;
	}
	public void setLog_title(String log_title) {
		this.log_title = log_title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getLog_image() {
		return log_image;
	}
	public void setLog_image(String log_image) {
		this.log_image = log_image;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}


}
