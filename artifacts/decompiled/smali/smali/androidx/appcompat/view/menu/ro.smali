.class public abstract Landroidx/appcompat/view/menu/ro;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Landroid/os/Binder;

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/fr;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ro;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ro;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/ro;->e:I

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ro;->h(Landroid/content/Intent;Landroidx/appcompat/view/menu/zy0;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ro;->i(Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->j(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/q71;->c(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ro;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/ro;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ro;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/ro;->d:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ro;->k(I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract e(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract f(Landroid/content/Intent;)V
.end method

.method public g(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic h(Landroid/content/Intent;Landroidx/appcompat/view/menu/zy0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->d(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic i(Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->f(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/bz0;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/bz0;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final j(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->g(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/appcompat/view/menu/jz0;->e(Ljava/lang/Object;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/bz0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bz0;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ro;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/appcompat/view/menu/qo;

    invoke-direct {v2, p0, p1, v0}, Landroidx/appcompat/view/menu/qo;-><init>(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;Landroidx/appcompat/view/menu/bz0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/ro;->b:Landroid/os/Binder;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/ga1;

    new-instance v0, Landroidx/appcompat/view/menu/ro$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ro$a;-><init>(Landroidx/appcompat/view/menu/ro;)V

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/ga1;-><init>(Landroidx/appcompat/view/menu/ga1$a;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ro;->b:Landroid/os/Binder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ro;->b:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ro;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object p2, p0, Landroidx/appcompat/view/menu/ro;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iput p3, p0, Landroidx/appcompat/view/menu/ro;->d:I

    iget p3, p0, Landroidx/appcompat/view/menu/ro;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Landroidx/appcompat/view/menu/ro;->e:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->e(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->d(Landroid/content/Intent;)V

    return p3

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ro;->j(Landroid/content/Intent;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/zy0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ro;->d(Landroid/content/Intent;)V

    return p3

    :cond_1
    new-instance p3, Landroidx/appcompat/view/menu/ic0;

    invoke-direct {p3}, Landroidx/appcompat/view/menu/ic0;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/po;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/po;-><init>(Landroidx/appcompat/view/menu/ro;Landroid/content/Intent;)V

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/view/menu/zy0;->c(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
