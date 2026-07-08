package androidx.appcompat.view.menu;

import android.accounts.Account;
import java.util.Objects;

/* loaded from: classes.dex */
public class z01 {
    public final int a;
    public final Account b;
    public final long c;
    public final String d;
    public final String e;
    public final String f;

    public z01(int i, Account account, String str, String str2, String str3, long j) {
        this.a = i;
        this.b = account;
        this.c = j;
        this.d = str3;
        this.e = str2;
        this.f = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z01)) {
            return false;
        }
        z01 z01Var = (z01) obj;
        return this.a == z01Var.a && this.c == z01Var.c && Objects.equals(this.b, z01Var.b) && Objects.equals(this.d, z01Var.d) && Objects.equals(this.e, z01Var.e) && Objects.equals(this.f, z01Var.f);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), this.b, Long.valueOf(this.c), this.d, this.e, this.f);
    }
}
