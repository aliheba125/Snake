.class public final Landroidx/appcompat/view/menu/jw1;
.super Landroidx/appcompat/view/menu/dz1;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public c:Landroidx/appcompat/view/menu/xw1;

.field public d:Landroidx/appcompat/view/menu/xw1;

.field public final e:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final f:Ljava/util/concurrent/BlockingQueue;

.field public final g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/util/concurrent/Semaphore;

.field public volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Landroidx/appcompat/view/menu/jw1;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/dz1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->i:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->j:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Landroidx/appcompat/view/menu/uw1;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/uw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Landroidx/appcompat/view/menu/uw1;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/uw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static bridge synthetic A(Landroidx/appcompat/view/menu/jw1;)Landroidx/appcompat/view/menu/xw1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    return-object p0
.end method

.method public static bridge synthetic C(Landroidx/appcompat/view/menu/jw1;Landroidx/appcompat/view/menu/xw1;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    return-void
.end method

.method public static bridge synthetic E(Landroidx/appcompat/view/menu/jw1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jw1;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic F()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/jw1;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static bridge synthetic H(Landroidx/appcompat/view/menu/jw1;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jw1;->j:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static bridge synthetic I(Landroidx/appcompat/view/menu/jw1;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/jw1;->k:Z

    return p0
.end method

.method public static bridge synthetic u(Landroidx/appcompat/view/menu/jw1;)Landroidx/appcompat/view/menu/xw1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    return-object p0
.end method

.method public static bridge synthetic x(Landroidx/appcompat/view/menu/jw1;Landroidx/appcompat/view/menu/xw1;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    return-void
.end method


# virtual methods
.method public final B(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/zw1;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/appcompat/view/menu/zw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jw1;->y(Landroidx/appcompat/view/menu/zw1;)V

    :goto_0
    return-object v0
.end method

.method public final D(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/zw1;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/appcompat/view/menu/zw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jw1;->y(Landroidx/appcompat/view/menu/zw1;)V

    return-void
.end method

.method public final G(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/zw1;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/appcompat/view/menu/zw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jw1;->y(Landroidx/appcompat/view/menu/zw1;)V

    return-void
.end method

.method public final J()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final v(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Timed out waiting for "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Interrupted waiting for "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/zw1;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/appcompat/view/menu/zw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/jw1;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/jw1;->y(Landroidx/appcompat/view/menu/zw1;)V

    :goto_0
    return-object v0
.end method

.method public final y(Landroidx/appcompat/view/menu/zw1;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/jw1;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/xw1;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Landroidx/appcompat/view/menu/jw1;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Landroidx/appcompat/view/menu/xw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/jw1;->c:Landroidx/appcompat/view/menu/xw1;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/xw1;->a()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final z(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->o()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/zw1;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/appcompat/view/menu/zw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/jw1;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/xw1;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Landroidx/appcompat/view/menu/jw1;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/xw1;-><init>(Landroidx/appcompat/view/menu/jw1;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/jw1;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/jw1;->d:Landroidx/appcompat/view/menu/xw1;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/xw1;->a()V

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
