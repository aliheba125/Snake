.class public final Landroidx/appcompat/view/menu/q92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public l:I

.field public final m:Landroid/os/Messenger;

.field public n:Landroidx/appcompat/view/menu/lc2;

.field public final o:Ljava/util/Queue;

.field public final p:Landroid/util/SparseArray;

.field public final synthetic q:Landroidx/appcompat/view/menu/ef2;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/ef2;Landroidx/appcompat/view/menu/j72;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/view/menu/q92;->l:I

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Landroidx/appcompat/view/menu/er1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/c32;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/c32;-><init>(Landroidx/appcompat/view/menu/q92;)V

    invoke-direct {p2, v0, v1}, Landroidx/appcompat/view/menu/er1;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q92;->m:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/q92;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Disconnected: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/appcompat/view/menu/q92;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput v2, p0, Landroidx/appcompat/view/menu/q92;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iput v2, p0, Landroidx/appcompat/view/menu/q92;->l:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ef2;->a(Landroidx/appcompat/view/menu/ef2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/hf;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance v0, Landroidx/appcompat/view/menu/se2;

    invoke-direct {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/se2;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/ne2;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ne2;->c(Landroidx/appcompat/view/menu/se2;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/ne2;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ne2;->c(Landroidx/appcompat/view/menu/se2;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ef2;->e(Landroidx/appcompat/view/menu/ef2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/tw1;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/tw1;-><init>(Landroidx/appcompat/view/menu/q92;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/q92;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/q92;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ne2;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timing out request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const-string p1, "Timed out waiting for response"

    new-instance v1, Landroidx/appcompat/view/menu/se2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Landroidx/appcompat/view/menu/se2;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ne2;->c(Landroidx/appcompat/view/menu/se2;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q92;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/q92;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/view/menu/q92;->l:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ef2;->a(Landroidx/appcompat/view/menu/ef2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/hf;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Landroidx/appcompat/view/menu/ne2;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/q92;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q92;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/q92;->o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/appcompat/view/menu/q92;->l:I

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->l(Z)V

    const-string p1, "MessengerIpcClient"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iput v3, p0, Landroidx/appcompat/view/menu/q92;->l:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ef2;->a(Landroidx/appcompat/view/menu/ef2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0, v3}, Landroidx/appcompat/view/menu/hf;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Unable to bind to service"

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/view/menu/q92;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ef2;->e(Landroidx/appcompat/view/menu/ef2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/yy1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yy1;-><init>(Landroidx/appcompat/view/menu/q92;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-interface {p1, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    :goto_1
    const-string v0, "Unable to bind to service"

    invoke-virtual {p0, v2, v0, p1}, Landroidx/appcompat/view/menu/q92;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit p0

    return v3

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ef2;->e(Landroidx/appcompat/view/menu/ef2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/mu1;

    invoke-direct {v0, p0, p2}, Landroidx/appcompat/view/menu/mu1;-><init>(Landroidx/appcompat/view/menu/q92;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q92;->q:Landroidx/appcompat/view/menu/ef2;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ef2;->e(Landroidx/appcompat/view/menu/ef2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/b12;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b12;-><init>(Landroidx/appcompat/view/menu/q92;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
