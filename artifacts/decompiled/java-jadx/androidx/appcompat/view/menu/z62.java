package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class z62 extends RuntimeException {
    public final List m;

    public z62(w32 w32Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.m = null;
    }
}
