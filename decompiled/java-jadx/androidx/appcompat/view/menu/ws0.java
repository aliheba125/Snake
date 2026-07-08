package androidx.appcompat.view.menu;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class ws0 implements Executor {
    public static final Logger r = Logger.getLogger(ws0.class.getName());
    public final Executor m;
    public final Deque n = new ArrayDeque();
    public c o = c.IDLE;
    public long p = 0;
    public final b q = new b(this, null);

    public class a implements Runnable {
        public final /* synthetic */ Runnable m;

        public a(Runnable runnable) {
            this.m = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.m.run();
        }

        public String toString() {
            return this.m.toString();
        }
    }

    public final class b implements Runnable {
        public Runnable m;

        public b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        
            r8.m.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0080, code lost:
        
            r8.m = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        
            androidx.appcompat.view.menu.ws0.r.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.m, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() {
            boolean z = false;
            boolean z2 = false;
            while (true) {
                try {
                    synchronized (ws0.this.n) {
                        if (!z) {
                            c cVar = ws0.this.o;
                            c cVar2 = c.RUNNING;
                            if (cVar != cVar2) {
                                ws0.d(ws0.this);
                                ws0.this.o = cVar2;
                                z = true;
                            }
                        }
                        Runnable runnable = (Runnable) ws0.this.n.poll();
                        this.m = runnable;
                        if (runnable == null) {
                            ws0.this.o = c.IDLE;
                        }
                    }
                    if (z2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } finally {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (ws0.this.n) {
                    ws0.this.o = c.IDLE;
                    throw e;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.m;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + ws0.this.o + "}";
        }

        public /* synthetic */ b(ws0 ws0Var, a aVar) {
            this();
        }
    }

    public enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public ws0(Executor executor) {
        this.m = (Executor) mj0.i(executor);
    }

    public static /* synthetic */ long d(ws0 ws0Var) {
        long j = ws0Var.p;
        ws0Var.p = 1 + j;
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0066 A[ADDED_TO_REGION] */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void execute(Runnable runnable) {
        c cVar;
        boolean z;
        mj0.i(runnable);
        synchronized (this.n) {
            c cVar2 = this.o;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j = this.p;
                a aVar = new a(runnable);
                this.n.add(aVar);
                c cVar3 = c.QUEUING;
                this.o = cVar3;
                try {
                    this.m.execute(this.q);
                    if (this.o != cVar3) {
                        return;
                    }
                    synchronized (this.n) {
                        try {
                            if (this.p == j && this.o == cVar3) {
                                this.o = cVar;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.n) {
                        try {
                            c cVar4 = this.o;
                            if (cVar4 != c.IDLE) {
                                if (cVar4 == c.QUEUING) {
                                }
                                z = false;
                                if ((e instanceof RejectedExecutionException) || z) {
                                    throw e;
                                }
                            }
                            if (this.n.removeLastOccurrence(aVar)) {
                                z = true;
                                if (e instanceof RejectedExecutionException) {
                                }
                                throw e;
                            }
                            z = false;
                            if (e instanceof RejectedExecutionException) {
                            }
                            throw e;
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.n.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.m + "}";
    }
}
