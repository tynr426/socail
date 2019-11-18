package user_frmk;

import java.util.Scanner;

@SuppressWarnings("unused")
public class TestPlace {

	public static void main(String[] args) {
        String idNum="532130199508100011";
        int nativePlaceCode=Integer.parseInt(idNum.substring(0, 6));
        System.out.println(nativePlaceCode);
        String nativePlace=NativePlace.getNativePlace(nativePlaceCode);
        System.out.println("您所在的地区为：\n" + nativePlace);
	}

}
