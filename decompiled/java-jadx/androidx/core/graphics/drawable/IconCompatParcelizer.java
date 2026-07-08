package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.appcompat.view.menu.h51;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(h51 h51Var) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = h51Var.p(iconCompat.a, 1);
        iconCompat.c = h51Var.j(iconCompat.c, 2);
        iconCompat.d = h51Var.r(iconCompat.d, 3);
        iconCompat.e = h51Var.p(iconCompat.e, 4);
        iconCompat.f = h51Var.p(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) h51Var.r(iconCompat.g, 6);
        iconCompat.i = h51Var.t(iconCompat.i, 7);
        iconCompat.j = h51Var.t(iconCompat.j, 8);
        iconCompat.j();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, h51 h51Var) {
        h51Var.x(true, true);
        iconCompat.k(h51Var.f());
        int i = iconCompat.a;
        if (-1 != i) {
            h51Var.F(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            h51Var.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            h51Var.H(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            h51Var.F(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            h51Var.F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            h51Var.H(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            h51Var.J(str, 7);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            h51Var.J(str2, 8);
        }
    }
}
