package androidx.appcompat.view.menu;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class r60 extends CancellationException {
    public final transient q60 m;

    public r60(String str, Throwable th, q60 q60Var) {
        super(str);
        this.m = q60Var;
        if (th != null) {
            initCause(th);
        }
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof r60) {
                r60 r60Var = (r60) obj;
                if (!z50.a(r60Var.getMessage(), getMessage()) || !z50.a(r60Var.m, this.m) || !z50.a(r60Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        z50.b(message);
        int hashCode = ((message.hashCode() * 31) + this.m.hashCode()) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.m;
    }
}
