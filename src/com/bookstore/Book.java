package com.bookstore;


public class Book {
	protected int id,year,totalcopies;
	protected String title;
	protected String author,publisher,edition,discription;
	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	protected float price;
	public Book() {
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getEdition() {
		return edition;
	}

	public void setEdition(String edition) {
		this.edition = edition;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public int getTotalcopies() {
		return totalcopies;
	}

	public void setTotalcopies(int totalcopies) {
		this.totalcopies = totalcopies;
	}

	/*public Book(int id) {
		this.id = id;
	}

	public Book(int id, String title, String author, float price) {
		this(title, author, price);
		this.id = id;
	}*/
	//`b_id`, `b_name`, `b_year`, `b_publicher_name`, `b_edition`, `b_discription`, `b_price`, `b_totalcopies`, `b_author`
	public Book(int id, int year, String publisher, String edition,String discription, int totalcopies, String title, String author, float price) {
		this.title = title;
		this.author = author;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
