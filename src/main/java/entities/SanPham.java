package entities;

public class SanPham {
	private int maSP;
	private String nameProduct;
	private String price;
	
	public SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SanPham(int maSP, String name, String price) {
		super();
		this.maSP = maSP;
		this.nameProduct = name;
		this.price = price;
	}
	public int getMaSP() {
		return maSP;
	}
	public void setMaSP(int maSP) {
		this.maSP = maSP;
	}
	public String getName() {
		return nameProduct;
	}
	public void setName(String name) {
		this.nameProduct = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "SanPham [maSP=" + maSP + ", name=" + nameProduct + ", price=" + price + "]";
	}
	
}
