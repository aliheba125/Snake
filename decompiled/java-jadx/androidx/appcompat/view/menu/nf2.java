package androidx.appcompat.view.menu;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class nf2 extends zy0 {
    public final Object a = new Object();
    public final me2 b = new me2();
    public boolean c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 a(Executor executor, fg0 fg0Var) {
        this.b.a(new sw1(executor, fg0Var));
        w();
        return this;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 b(gg0 gg0Var) {
        this.b.a(new a12(gz0.a, gg0Var));
        w();
        return this;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 c(Executor executor, gg0 gg0Var) {
        this.b.a(new a12(executor, gg0Var));
        w();
        return this;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 d(Executor executor, ig0 ig0Var) {
        this.b.a(new e52(executor, ig0Var));
        w();
        return this;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 e(Executor executor, mg0 mg0Var) {
        this.b.a(new p92(executor, mg0Var));
        w();
        return this;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 f(Executor executor, yg ygVar) {
        nf2 nf2Var = new nf2();
        this.b.a(new rm1(executor, ygVar, nf2Var));
        w();
        return nf2Var;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 g(Executor executor, yg ygVar) {
        nf2 nf2Var = new nf2();
        this.b.a(new ir1(executor, ygVar, nf2Var));
        w();
        return nf2Var;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final Exception h() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final Object i() {
        Object obj;
        synchronized (this.a) {
            try {
                t();
                u();
                Exception exc = this.f;
                if (exc != null) {
                    throw new cq0(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final Object j(Class cls) {
        Object obj;
        synchronized (this.a) {
            try {
                t();
                u();
                if (cls.isInstance(this.f)) {
                    throw ((Throwable) cls.cast(this.f));
                }
                Exception exc = this.f;
                if (exc != null) {
                    throw new cq0(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final boolean k() {
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final boolean l() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final boolean m() {
        boolean z;
        synchronized (this.a) {
            try {
                z = false;
                if (this.c && !this.d && this.f == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.zy0
    public final zy0 n(Executor executor, cy0 cy0Var) {
        nf2 nf2Var = new nf2();
        this.b.a(new kc2(executor, cy0Var, nf2Var));
        w();
        return nf2Var;
    }

    public final void o(Exception exc) {
        mj0.j(exc, "Exception must not be null");
        synchronized (this.a) {
            v();
            this.c = true;
            this.f = exc;
        }
        this.b.b(this);
    }

    public final void p(Object obj) {
        synchronized (this.a) {
            v();
            this.c = true;
            this.e = obj;
        }
        this.b.b(this);
    }

    public final boolean q() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.d = true;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean r(Exception exc) {
        mj0.j(exc, "Exception must not be null");
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.f = exc;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean s(Object obj) {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.e = obj;
                this.b.b(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void t() {
        mj0.m(this.c, "Task is not yet complete");
    }

    public final void u() {
        if (this.d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    public final void v() {
        if (this.c) {
            throw gn.a(this);
        }
    }

    public final void w() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    this.b.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
