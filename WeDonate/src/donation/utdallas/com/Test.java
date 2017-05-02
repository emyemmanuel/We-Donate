package donation.utdallas.com;

public class Test {

	public static void main(String args[]){
		doop();
	}
	public static void doop(){
		String name= "i can do";
		name.replace("can", "cannot");
		name.replaceAll("can.*","will");
		System.out.println(name);
	}

}
