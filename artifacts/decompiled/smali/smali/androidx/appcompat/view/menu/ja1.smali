.class public Landroidx/appcompat/view/menu/ja1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ja1$a;
    }
.end annotation


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Landroid/content/Intent;

.field public final n:Ljava/util/concurrent/ScheduledExecutorService;

.field public final o:Ljava/util/Queue;

.field public p:Landroidx/appcompat/view/menu/ga1;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Landroidx/appcompat/view/menu/le0;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/le0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ja1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ja1;->l:Landroid/content/Context;

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ja1;->m:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ja1;->n:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ja1$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ja1$a;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1;->p:Landroidx/appcompat/view/menu/ga1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ja1$a;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ja1;->p:Landroidx/appcompat/view/menu/ga1;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ga1;->c(Landroidx/appcompat/view/menu/ja1$a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    new-instance v0, Landroidx/appcompat/view/menu/ja1$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ja1$a;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ja1;->n:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ja1$a;->c(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ja1;->o:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->b()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ja1$a;->e()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()V
    .locals 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder is dead. start connection? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ja1;->l:Landroid/content/Context;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ja1;->m:Landroid/content/Intent;

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, p0, v3}, Landroidx/appcompat/view/menu/hf;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-void

    :catch_0
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->a()V

    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ja1;->q:Z

    instance-of p1, p2, Landroidx/appcompat/view/menu/ga1;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid service connection: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    check-cast p2, Landroidx/appcompat/view/menu/ga1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ja1;->p:Landroidx/appcompat/view/menu/ga1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ja1;->b()V

    return-void
.end method
