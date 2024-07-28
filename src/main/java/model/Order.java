package model;

import java.util.List;

import model.User;

public class Order {
	private long orderId;
    private User user;
    private double total;
    private String status;
    private List<OrderItem> items;
    
	public Order(int id, User user, double total, String status, List<OrderItem> items) {
		super();
		this.orderId = id;
		this.user = user;
		this.total = total;
		this.status = status;
		this.items = items;
	}
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public long getId() {
		return orderId;
	}
	public void setId(long l) {
		this.orderId = l;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<OrderItem> getItems() {
		return items;
	}
	public void setItems(List<OrderItem> items) {
		this.items = items;
	}
	
	@Override
	public String toString() {
		return "Order [id=" + orderId + ", user=" + user + ", total=" + total + ", status=" + status + ", items=" + items
				+ "]";
	}
    
    
}
