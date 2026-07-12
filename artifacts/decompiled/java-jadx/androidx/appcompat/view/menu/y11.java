package androidx.appcompat.view.menu;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class y11 {
    public View b;
    public final Map a = new HashMap();
    public final ArrayList c = new ArrayList();

    public y11(View view) {
        this.b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof y11)) {
            return false;
        }
        y11 y11Var = (y11) obj;
        return this.b == y11Var.b && this.a.equals(y11Var.a);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.b + "\n") + "    values:";
        for (String str2 : this.a.keySet()) {
            str = str + "    " + str2 + ": " + this.a.get(str2) + "\n";
        }
        return str;
    }
}
