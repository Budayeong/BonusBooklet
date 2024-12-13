package com.springboot.bonusbooklet.model;

public class BookDO {
	private int book_idx;
	private String book_title;
	private String author;
	private String publisher;
	private String genre;
	private float rating;
	private int status;
	private String book_image;
	
	@Override
	public String toString() {
		return "BookDO [book_idx=" + book_idx + ", book_title=" + book_title + ", author=" + author + ", publisher="
				+ publisher + ", genre=" + genre + ", rating=" + rating + ", status=" + status + ", book_image="
				+ book_image + "]";
	}
	public int getBook_idx() {
		return book_idx;
	}
	public void setBook_idx(int book_idx) {
		this.book_idx = book_idx;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getBook_image() {
		return book_image;
	}
	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}
	
	
	
		
	
	
	

}
