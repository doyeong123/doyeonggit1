package dto;

import java.io.Serializable;

public class Product implements Serializable{
	
		private static final long serialVersionUID = -4274700572038677000L;
		
		private String productId;
		private String Pname;
		private Integer unitPrice;
		private String description;
		private String manufacturer;
		private String category;
		private long unitsInStock;
		private String condition;
		private String filename;
		
		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
		}

		public Product() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Product(String productId, String pname, Integer unitPrice) {
			super();
			this.productId = productId;
			Pname = pname;
			this.unitPrice = unitPrice;
		}

		public String getProductId() {
			return productId;
		}

		public void setProductId(String productId) {
			this.productId = productId;
		}

		public String getPname() {
			return Pname;
		}

		public void setPname(String pname) {
			Pname = pname;
		}

		public Integer getUnitPrice() {
			return unitPrice;
		}

		public void setUnitPrice(Integer unitPrice) {
			this.unitPrice = unitPrice;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getManufacturer() {
			return manufacturer;
		}

		public void setManufacturer(String manufacturer) {
			this.manufacturer = manufacturer;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public long getUnitsInStock() {
			return unitsInStock;
		}

		public void setUnitsInStock(long unitsInStock) {
			this.unitsInStock = unitsInStock;
		}

		public String getCondition() {
			return condition;
		}

		public void setCondition(String condition) {
			this.condition = condition;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		} 
		
		
	
		
}