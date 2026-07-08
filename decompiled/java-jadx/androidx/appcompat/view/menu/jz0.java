package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class jz0 {
    public static Object a(zy0 zy0Var) {
        mj0.g();
        mj0.j(zy0Var, "Task must not be null");
        if (zy0Var.l()) {
            return f(zy0Var);
        }
        jf1 jf1Var = new jf1(null);
        g(zy0Var, jf1Var);
        jf1Var.b();
        return f(zy0Var);
    }

    public static Object b(zy0 zy0Var, long j, TimeUnit timeUnit) {
        mj0.g();
        mj0.j(zy0Var, "Task must not be null");
        mj0.j(timeUnit, "TimeUnit must not be null");
        if (zy0Var.l()) {
            return f(zy0Var);
        }
        jf1 jf1Var = new jf1(null);
        g(zy0Var, jf1Var);
        if (jf1Var.e(j, timeUnit)) {
            return f(zy0Var);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static zy0 c(Executor executor, Callable callable) {
        mj0.j(executor, "Executor must not be null");
        mj0.j(callable, "Callback must not be null");
        nf2 nf2Var = new nf2();
        executor.execute(new cg2(nf2Var, callable));
        return nf2Var;
    }

    public static zy0 d(Exception exc) {
        nf2 nf2Var = new nf2();
        nf2Var.o(exc);
        return nf2Var;
    }

    public static zy0 e(Object obj) {
        nf2 nf2Var = new nf2();
        nf2Var.p(obj);
        return nf2Var;
    }

    public static Object f(zy0 zy0Var) {
        if (zy0Var.m()) {
            return zy0Var.i();
        }
        if (zy0Var.k()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(zy0Var.h());
    }

    public static void g(zy0 zy0Var, nf1 nf1Var) {
        Executor executor = gz0.b;
        zy0Var.e(executor, nf1Var);
        zy0Var.d(executor, nf1Var);
        zy0Var.a(executor, nf1Var);
    }
}
