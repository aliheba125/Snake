package androidx.appcompat.view.menu;

import java.util.Objects;

/* loaded from: classes.dex */
public class vh0 {
    public int a;
    public String b;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vh0)) {
            return false;
        }
        vh0 vh0Var = (vh0) obj;
        return this.a == vh0Var.a && Objects.equals(this.b, vh0Var.b);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), this.b);
    }
}
