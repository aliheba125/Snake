package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class gn extends IllegalStateException {
    public gn(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException a(zy0 zy0Var) {
        if (!zy0Var.l()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception h = zy0Var.h();
        return new gn("Complete with: ".concat(h != null ? "failure" : zy0Var.m() ? "result ".concat(String.valueOf(zy0Var.i())) : zy0Var.k() ? "cancellation" : "unknown issue"), h);
    }
}
