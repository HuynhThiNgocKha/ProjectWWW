package model;

public class Product {
	private int productId;
	private String productName;
	private double price;
	private String image;
		
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int productId, String productName, double price, String image) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.image = image;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public long getId() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
