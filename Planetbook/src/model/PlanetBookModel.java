package model;

public class PlanetBookModel {

	private String name;
	private String surface;
	private float size;
	
	public PlanetBookModel() {
		// TODO Auto-generated constructor stub
	}
	
	

	public PlanetBookModel(String name, String surface, float size) {
		super();
		this.name = name;
		this.surface = surface;
		this.size = size;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurface() {
		return surface;
	}

	public void setSurface(String surface) {
		this.surface = surface;
	}

	public float getSize() {
		return size;
	}

	public void setSize(float size) {
		this.size = size;
	}
}
