package androidx.appcompat.view.menu;

import android.os.RemoteException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class w02 extends vf2 {
    public final int l;

    public w02(byte[] bArr) {
        mj0.a(bArr.length == 25);
        this.l = Arrays.hashCode(bArr);
    }

    public static byte[] k(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // androidx.appcompat.view.menu.zf2
    public final int c() {
        return this.l;
    }

    @Override // androidx.appcompat.view.menu.zf2
    public final b20 d() {
        return vf0.k(u2());
    }

    public final boolean equals(Object obj) {
        b20 d;
        if (obj != null && (obj instanceof zf2)) {
            try {
                zf2 zf2Var = (zf2) obj;
                if (zf2Var.c() == this.l && (d = zf2Var.d()) != null) {
                    return Arrays.equals(u2(), (byte[]) vf0.j(d));
                }
                return false;
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.l;
    }

    public abstract byte[] u2();
}
