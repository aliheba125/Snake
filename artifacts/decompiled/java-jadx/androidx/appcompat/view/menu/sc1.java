package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public abstract class sc1 extends jb1 implements vc1 {
    public sc1() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // androidx.appcompat.view.menu.jb1
    public final boolean u2(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case q02.c.c /* 3 */:
                break;
            case 4:
                break;
            case q02.c.e /* 5 */:
            default:
                return false;
            case q02.c.f /* 6 */:
                break;
            case q02.c.g /* 7 */:
                break;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                v((ld1) dc1.a(parcel, ld1.CREATOR));
                break;
            case 9:
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
